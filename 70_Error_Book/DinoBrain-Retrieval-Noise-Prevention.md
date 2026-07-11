---
title: DinoBrain Retrieval Noise Prevention
summary: Prevention notes for search noise, stale nodes, overbroad accepted memories, and context pack routing.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, error, retrieval, noise, context-pack, lifecycle]
---

# DinoBrain Retrieval Noise Prevention

The main retrieval failure mode is not only missing recall. It is also context pollution: broad accepted records, task summaries, or unreviewed generated rules can crowd out the exact memory needed for a session.

Prevention rules:

- Candidate and Review Queue records stay out of default packs.
- Auto-generated accepted memory without review lineage is excluded.
- Context Pack routing should prefer the intended root but still allow useful cross-root evidence.
- Evaluation must report both recall and noise.
- Lifecycle jobs should merge, hold, demote, quarantine, or archive stale nodes instead of letting memory grow forever.
