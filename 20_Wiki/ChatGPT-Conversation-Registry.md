---
title: ChatGPT Conversation Registry
summary: Complete privacy-preserving registration of the supplied ChatGPT export, with local source cards and message-level hash coverage.
tags: [chatgpt, sessions, conversation-registry, llm-wiki, provenance]
---

# ChatGPT Conversation Registry

Last verified: 2026-07-11T09:14:02.140Z
Source ZIP SHA-256: `7e5ea3d489f2205406175a8fe40da9c51c926a7f7fef7b9a34835269d92e0db0`
ChatGPT conversations: 841
Codex export threads: 1
Messages registered: 17132
Attachment files anchored by the ZIP: 575
Parse errors: 0

## Coverage Contract

Every exported conversation message is represented by role, timestamp when available, character count, and a redacted-content SHA-256 in a local-only session archive. Each conversation also has a local-only searchable source card with at most three redacted user excerpts. The source ZIP hash anchors the exact original export, including attachments.

## Privacy Boundary

Raw full transcripts, assistant response text, account identifiers, and attachment binaries are not copied into the Wiki or public Git data. `user.json` is hash-registered but excluded from content extraction. Local source cards under `30_Sources/private/` and session archives under `10_Conversations/raw/` must remain ignored by Git.

## Conversation Months

| Month | Conversations |
| --- | ---: |
| 2023-03 | 22 |
| 2023-04 | 13 |
| 2023-05 | 1 |
| 2023-06 | 1 |
| 2025-03 | 3 |
| 2025-04 | 16 |
| 2025-05 | 69 |
| 2025-06 | 16 |
| 2025-07 | 21 |
| 2025-08 | 23 |
| 2025-09 | 36 |
| 2025-10 | 24 |
| 2025-11 | 28 |
| 2025-12 | 31 |
| 2026-01 | 41 |
| 2026-02 | 57 |
| 2026-03 | 160 |
| 2026-04 | 96 |
| 2026-05 | 96 |
| 2026-06 | 59 |
| 2026-07 | 28 |

## Durable Evidence

- Registry report: `60_Operations/session-imports/chatgpt-export-registry.json`
- Knowledge profile: `20_Wiki/ChatGPT-Session-Knowledge-Profile.md`
- Promotion evidence: `60_Operations/session-promotions/chatgpt-session-knowledge-promotion.json`
- Local source cards: `30_Sources/private/chatgpt/conversations/`
- Local metadata archives: `10_Conversations/raw/`
