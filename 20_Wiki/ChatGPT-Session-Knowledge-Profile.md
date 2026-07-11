---
title: ChatGPT Session Knowledge Profile
summary: Reviewed aggregate operating preferences distilled from the user's full ChatGPT export without storing raw transcripts.
tags: [chatgpt, user-preferences, operating-rules, llm-wiki, reviewed-memory]
---

# ChatGPT Session Knowledge Profile

Last verified: 2026-07-11T09:14:02.140Z
Conversations reviewed by pattern coverage: 841
User messages available as evidence: 4155
Supported operating rules: 9

## Authority

These are aggregate, paraphrased operating preferences supported by repeated user-message patterns. They are subordinate to the user's current instruction. Exact evidence is stored only as conversation references and message hashes in the promotion report.

## Reviewed Rules

### Execute directly when the requested action is safe

The user prefers the agent to carry safe work through directly instead of stopping at a proposal.

Operating rule: Once scope is clear, implement, verify, and report the result without asking avoidable approval questions.

Evidence: 35 matching messages across 26 conversations.

### Plan before broad execution

The user wants broad or ambiguous work anchored to an explicit plan before implementation expands.

Operating rule: For substantial work, establish scope, order, and completion criteria first, then execute inside that plan.

Evidence: 19 matching messages across 19 conversations.

### Prove work end to end

The user values implementation, verification, persistence, and distribution as one completed workflow.

Operating rule: Do not claim completion at scaffolding; run the relevant tests and include commit, push, or release when requested.

Evidence: 6 matching messages across 6 conversations.

### Prefer direct local evidence over abstract claims

The user prefers conclusions grounded in directly inspected files, logs, screenshots, commands, and live state.

Operating rule: For verification and debugging, inspect the real workspace and report concrete evidence before making broad claims.

Evidence: 5 matching messages across 5 conversations.

### Keep durable provenance

The user wants memory claims separated from verified source evidence and linked through durable provenance.

Operating rule: Store source and chunk identity, hashes, review state, and claim links so later agents can distinguish memory from verified evidence.

Evidence: 4 matching messages across 4 conversations.

### Compound knowledge from conversation history

The user wants conversation sessions converted into durable, reviewed knowledge that improves later sessions.

Operating rule: Treat sessions as source material, promote repeated decisions and corrections, and preserve provenance without copying raw transcripts into public memory.

Evidence: 3 matching messages across 3 conversations.

### Use critical review and cross-checking

The user wants important designs and implementations challenged, reviewed, and independently checked.

Operating rule: For high-impact decisions, look for failure modes and conflicting evidence instead of only confirming the current design.

Evidence: 2 matching messages across 2 conversations.

### Load OS context before substantive response

The user expects DinoBrain OS context to be loaded before an agent performs substantive work.

Operating rule: Require a verified pre-response task/context trace and fail closed when the OS context is unavailable.

Evidence: 2 matching messages across 1 conversations.

### Make setup and recovery portable

The user expects DinoBrain to install and recover consistently on another computer.

Operating rule: Treat installer, client wiring, GitHub state, and recovery parity as one portable setup contract.

Evidence: 1 matching messages across 1 conversations.

## Provenance

- Conversation registry: `20_Wiki/ChatGPT-Conversation-Registry.md`
- Promotion evidence: `60_Operations/session-promotions/chatgpt-session-knowledge-promotion.json`
- Source ZIP SHA-256: `7e5ea3d489f2205406175a8fe40da9c51c926a7f7fef7b9a34835269d92e0db0`
