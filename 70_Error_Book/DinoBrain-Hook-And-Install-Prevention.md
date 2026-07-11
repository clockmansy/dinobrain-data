---
title: DinoBrain Hook And Install Prevention Notes
summary: Prevention notes for hook trust, installer errors, Codex restart, no-Git installs, and live proof.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, error, hook, installer, live-proof, prevention]
---

# DinoBrain Hook And Install Prevention Notes

- A Codex process started before config changes may not pick up new hook settings.
- Hook approval cannot be inferred from MCP registration alone.
- The live verifier must reject diagnostic, installer, manual, or spoofed launch kinds.
- `codex_desktop` launch kind must come from process ancestry, not an environment override.
- A no-Git install is degraded for the closed-loop goal because Git push cannot be proven.
- `SkipVerify` should be treated as degraded install mode, not release readiness.
