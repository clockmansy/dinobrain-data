param(
  [ValidateSet("pre-commit", "pre-push")]
  [string]$Mode = "pre-commit"
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

function Get-FullPath {
  param(
    [Parameter(Mandatory = $true)][string]$Base,
    [Parameter(Mandatory = $true)][string]$Path
  )
  if ([System.IO.Path]::IsPathRooted($Path)) {
    return [System.IO.Path]::GetFullPath($Path)
  }
  return [System.IO.Path]::GetFullPath((Join-Path $Base $Path))
}

$repoRootText = (& git rev-parse --show-toplevel 2>$null)
if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($repoRootText)) {
  Write-Error "DinoBrain data safety hook failed closed: repository root is unavailable."
  exit 1
}
$repoRoot = [System.IO.Path]::GetFullPath($repoRootText.Trim())

$gitDirText = (& git -C $repoRoot rev-parse --git-dir 2>$null)
if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($gitDirText)) {
  Write-Error "DinoBrain data safety hook failed closed: Git directory is unavailable."
  exit 1
}
$gitDir = Get-FullPath -Base $repoRoot -Path $gitDirText.Trim()
$configPath = Join-Path $gitDir "dinobrain-classifier.json"
if (-not (Test-Path -LiteralPath $configPath)) {
  Write-Error "DinoBrain data safety hook failed closed: classifier config is missing. Re-run the DinoBrain installer."
  exit 1
}

try {
  $config = Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json
} catch {
  Write-Error "DinoBrain data safety hook failed closed: classifier config is unreadable."
  exit 1
}

foreach ($property in @("policy_version", "node_path", "classifier_cli")) {
  if (-not $config.PSObject.Properties[$property] -or [string]::IsNullOrWhiteSpace([string]$config.$property)) {
    Write-Error "DinoBrain data safety hook failed closed: classifier config lacks $property."
    exit 1
  }
}
foreach ($requiredPath in @([string]$config.node_path, [string]$config.classifier_cli)) {
  if (-not (Test-Path -LiteralPath $requiredPath)) {
    Write-Error "DinoBrain data safety hook failed closed: configured runtime is missing: $requiredPath"
    exit 1
  }
}

$arguments = @(
  [string]$config.classifier_cli,
  "--repo", $repoRoot,
  "--mode", $Mode,
  "--expected-policy-version", [string]$config.policy_version
)

if ($Mode -eq "pre-push" -and [Console]::IsInputRedirected) {
  $pushInput = [Console]::In.ReadToEnd()
  $pushInput | & ([string]$config.node_path) @arguments
} else {
  & ([string]$config.node_path) @arguments
}
$classifierExit = $LASTEXITCODE
if ($classifierExit -ne 0) {
  Write-Error "DinoBrain data safety hook blocked this $Mode with classifier exit code $classifierExit."
  exit $classifierExit
}

Write-Host "DinoBrain unified data classifier passed ($Mode, $($config.policy_version))."
exit 0
