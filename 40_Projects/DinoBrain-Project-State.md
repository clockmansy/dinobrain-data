---
title: DinoBrain Project State
summary: Current project state, implementation status, decisions, handoffs, and constraints for DinoBrain OS.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, project, state, decisions, handoff, implementation, constraints]
---

# DinoBrain Project State

DinoBrain is being shaped as a local-first memory OS. Its working target is a closed loop:

1. Pre-response hook or `os_begin_task` starts each nontrivial session.
2. A Context Pack retrieves compact, reviewed memory.
3. The agent works with current user instruction as the highest priority.
4. `finish_task` records outcome, memory use, decisions, and next steps.
5. Useful results become candidates, not accepted memory, until review.
6. Reviewed memory and indexes are pushed to the data repo when policy allows it.

## Implementation Status

- Codex MCP and user prompt hook are configured.
- `verify:codex-loop` proves the fixture closed loop, including auto-sync push.
- `verify:codex-live` is the real-session proof gate and must fail without a fresh Codex desktop hook event.
- Auto-growth and compounding now route generated memory through candidates and Review Queue.
- Legacy unreviewed auto-generated accepted memories are being migrated back to candidates.

## Current Constraints

- Lexical fallback must not be overclaimed as real dense semantic retrieval.
- Behavior quality requires a real-vault golden set, not just path retrieval.
- New-PC install readiness requires Codex hook trust/restart/live proof, not only config presence.
- Public data must never contain raw full conversation transcripts or unreviewed generated accepted memory.
