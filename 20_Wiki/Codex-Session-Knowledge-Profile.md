---
title: Codex Session Knowledge Profile
summary: Reviewed aggregate memories extracted from local Codex sessions without storing raw transcripts.
source_status: internal
confidence: medium
last_verified: 2026-07-06
tags: [codex, sessions, user-preferences, operating-rules, llm-wiki]
---

# Codex Session Knowledge Profile

Generated at: 2026-07-06T23:29:34.574Z
Sessions scanned: 47
Promoted memories: 15
Raw full transcripts stored: false
Message content stored: false

This page summarizes aggregate, paraphrased knowledge promoted from local Codex sessions. The evidence stored in accepted memory records is limited to session refs, redacted message hashes, counts, categories, and matched pattern names. It does not store raw conversation text.

## Promoted Memory

### Installer must restore equivalent DinoBrain behavior on a new PC

- kind: project_decision
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-installer_new_pc_equivalence.json`
- sessions: 47; user hits: 238; assistant hits: 1173; score: 3298
- rule: For installer work, verify app/data refs, portable Node, build/index, Codex and Claude registration, hook approval flow, launchers, release artifact alignment, and reinstall/idempotent behavior.

### Prefer direct local verification and evidence

- kind: user_preference
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-local_evidence_over_claims.json`
- sessions: 46; user hits: 199; assistant hits: 2394; score: 2991
- rule: For verification/debugging, inspect the real workspace and report command/file evidence; if a check was not run, say that plainly.

### Observability must show real OS state

- kind: project_decision
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-observability_required.json`
- sessions: 42; user hits: 150; assistant hits: 722; score: 2044
- rule: Do not treat a decorative graph as sufficient; expose live OS traces, graph health, gate status, audit trust, memory use, sync risk, and stale task state.

### DinoBrain must run pre-response and fail closed

- kind: operating_rule
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-pre_response_fail_closed_loop.json`
- sessions: 31; user hits: 87; assistant hits: 590; score: 1528
- rule: For nontrivial DinoBrain work, require os_begin_task or trusted hook preflight, Context Pack, gates, finish_task, and explicit degraded/fail-closed state when missing.

### Version drift and stale release artifacts are recurring risks

- kind: mistake_lesson
- confidence: medium
- accepted memory: `50_Instances/accepted/codex-session-knowledge-version_release_drift_risk.json`
- sessions: 41; user hits: 46; assistant hits: 589; score: 1316
- rule: For releases and installer updates, verify local/remote refs, package version, embedded installer refs, tag, ZIP/SHA asset, and GitHub release state.

### Carry authorized work through commit, push, and deploy

- kind: user_preference
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-end_to_end_execution_push.json`
- sessions: 37; user hits: 87; assistant hits: 930; score: 1278
- rule: After explicit authorization such as go, push, deploy, or auto-commit, implement, verify, commit, push, and report exact hashes or links.

### Prefer direct links or actions when the path is known

- kind: user_preference
- confidence: medium
- accepted memory: `50_Instances/accepted/codex-session-knowledge-one_link_or_direct_action.json`
- sessions: 22; user hits: 42; assistant hits: 801; score: 969
- rule: If the user asks for an install link, file, folder, or app launch, provide the direct artifact or perform the action first, then add only essential context.

### Do not sync raw Codex conversation transcripts

- kind: safety_rule
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-raw_transcripts_never_public.json`
- sessions: 31; user hits: 51; assistant hits: 219; score: 810
- rule: Register sessions metadata-only, extract paraphrased reviewed memories, and never store raw full transcripts or message content in public Wiki, accepted memory, traces, or reports.

### Configured hooks are not live preflight proof

- kind: mistake_lesson
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-configured_is_not_live_proof.json`
- sessions: 32; user hits: 50; assistant hits: 173; score: 669
- rule: Distinguish configured, probe-verified, and live-verified; require fresh prompt event evidence for live hook claims.

### DinoBrain goal is knowledge compounding from sessions

- kind: project_goal
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-knowledge_compounding_goal.json`
- sessions: 29; user hits: 52; assistant hits: 196; score: 600
- rule: Treat sessions as the root source; convert them into reviewed memory, lifecycle-clean noisy memory, evaluate behavior lift, and retrieve the result in later Context Packs.

### Plan-first execution for new or handoff-heavy work

- kind: user_preference
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-plan_first_scope_lock.json`
- sessions: 25; user hits: 74; assistant hits: 297; score: 519
- rule: When a task is broad, new, design-heavy, or handoff-driven, first summarize understanding, ask only necessary questions, lock the plan, then execute within that plan.

### RAG quality requires hybrid retrieval, provenance, and evaluation

- kind: project_decision
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-rag_quality_direction.json`
- sessions: 28; user hits: 30; assistant hits: 142; score: 404
- rule: When improving DinoBrain search, separate anchor-only sources from verified chunks, keep retrieval mode honest, and evaluate memory-on behavior against baselines.

### Design tasks need high-quality visual iteration without unrelated logic changes

- kind: user_preference
- confidence: medium
- accepted memory: `50_Instances/accepted/codex-session-knowledge-design_quality_without_logic_changes.json`
- sessions: 14; user hits: 34; assistant hits: 94; score: 230
- rule: For design-only requests, first restate the visual intent, keep logic untouched, iterate with screenshots, and remove forced motifs when they reduce clarity.

### Current user instruction outranks stored memory

- kind: operating_rule
- confidence: high
- accepted memory: `50_Instances/accepted/codex-session-knowledge-current_instruction_over_memory.json`
- sessions: 29; user hits: 74; assistant hits: 8; score: 164
- rule: Use memory as subordinate evidence; if the current user instruction conflicts with stored memory, follow the current instruction and record the correction if durable.

### Explain unfamiliar work in plain language

- kind: user_preference
- confidence: medium
- accepted memory: `50_Instances/accepted/codex-session-knowledge-explain_when_confused.json`
- sessions: 8; user hits: 11; assistant hits: 3; score: 47
- rule: When the user asks what something means or why it happened, explain the concrete cause, consequence, and next action in plain Korean.

## Skipped Below Threshold


## Guardrails

- Treat these records as internal behavior and preference memory, not external factual source truth.
- Current user instructions always outrank this profile.
- If a memory proves too broad or stale, demote, merge, or quarantine it.

