---
title: DinoBrain Install And Release State
summary: Project status for installer, release, new PC equivalence, version parity, and GitHub recovery.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, project, installer, release, github, version-parity, new-pc]
---

# DinoBrain Install And Release State

The installer must restore equivalent DinoBrain behavior on a new PC. The expected install state includes app and data repository checkout, portable Node, build output, SQLite indexes, Codex MCP registration, Codex user prompt hook registration, Observatory launcher, and verification commands.

## Release Readiness Checks

- Local app version, Git tag, release asset, and GitHub release must align.
- Embedded `install.ps1` must include `verify:os` and `verify:codex-loop`.
- Release ZIP or EXE assets must be self-tested by extracting the embedded install script.
- Git is required for the full closed-loop proof because `verify:codex-loop` proves push to a remote.

## Known Risk

Configured hooks are not live proof. After install, Codex may need restart and hook trust approval before a fresh prompt can produce `codex_prompt_submitted` and `codex_preflight_completed` events.
