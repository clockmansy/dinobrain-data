---
title: DinoBrain Recurring Failures
summary: Error book for repeated mistakes, corrections, prevention notes, and release/verification failures.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, error, mistakes, corrections, prevention, verification]
---

# DinoBrain Recurring Failures

## Mistake: Configured Is Not Live

Do not claim the hook is live only because config files exist. Require a fresh Codex desktop prompt with matching `hook_run_id`, `prompt_hash`, Context Pack trace, and live hook report.

## Mistake: Unreviewed Memory Pollution

Do not allow auto-generated accepted memory without review lineage. Generated task memories and behavior rules must go to candidates and Review Queue first.

## Mistake: Retrieval Looks Good But Behavior Is Untested

Do not treat context path recall as behavior improvement. `verify:os` must include behavior quality evaluation against a real-vault golden set.

## Mistake: Release Drift

Do not publish stale installers. Validate package version, local/remote refs, tag, release asset, embedded install script, and closed-loop verification.
