---
title: DinoBrain Public Data Safety Errors
summary: Error book for raw transcript leakage, local path leakage, public repo risk, and sync-policy mistakes.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, error, public-data, privacy, sync, safety]
---

# DinoBrain Public Data Safety Errors

Codex conversations are source material for memory, but raw full transcripts and message content must not be synced to public data. Durable memory should be paraphrased, reviewed, and evidence-linked.

Prevention rules:

- Raw conversation archives remain local-only.
- Public Wiki and accepted memory must not store message content.
- Accepted memory needs provenance and review lineage.
- Sync policy must block secrets, raw transcripts, private attachments, and unreviewed generated accepted memories.
- Public safety checks should fail hard on blockers before release or push claims.
