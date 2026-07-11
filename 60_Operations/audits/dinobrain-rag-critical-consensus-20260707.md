---
title: DinoBrain RAG Critical Consensus Audit
summary: Twenty-agent consensus audit of DinoBrain against the user's desired local-first LLM Wiki OS.
source_status: internal_verified
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, rag, llm-wiki, audit, consensus, fail-closed, provenance, retrieval-quality]
---

# DinoBrain RAG Critical Consensus Audit

Generated at: 2026-07-07T00:55:00Z
Scope: read-mostly critical audit using verified RAG knowledge, local code, local data, live verification outputs, and twenty subagent reviews.

## Target OS

The desired DinoBrain OS is not just a note vault. It must be a closed loop:

1. Every nontrivial Codex/Claude session gets trusted OS preflight context before useful work.
2. The agent uses a small, relevant Context Pack from a fast LLM Wiki.
3. Additional memory search is narrow and provenance-aware.
4. Finish/writeback records what happened and promotes only useful, reviewed knowledge.
5. Claims stay connected to source/chunk/provenance.
6. Behavior evaluation proves memory-on behavior beats memory-off behavior.
7. Observatory shows hook, task, read trace, gate, audit, graph, sync, and degraded states.
8. A new PC install restores equivalent app/data/hook/index behavior without losing local data.

## Consensus P0

### P0-1. Hook wrapper must fail closed at the outermost layer

Current gap:
The JavaScript hook can emit fail-closed output, but the PowerShell wrapper has failure paths that can tell Codex to continue without OS context. That breaks the user's hard requirement: no practical work before OS context.

Evidence:
- `scripts/dinobrain-user-prompt-hook.ps1` can return a continue-style context when Node is missing or the wrapper throws.
- `src/os-contract.ts` says missing Context Pack is `pre_response_os_context_required` and should block.
- `scripts/verify-codex-hook.mjs` currently expects normal hook output to include `fail_closed: false`, so the release tests still normalize non-blocking preflight rather than a strict global OS-before-work contract.

Fix:
- Make PowerShell wrapper missing-node and catch paths emit the same `decision: block` fail-closed JSON as the JS hook.
- Add verifier cases for missing Node, wrapper exception, malformed hook input, duplicate lock without sibling report, and Codex/Claude stale-session reload.
- Change manual fallback protocol from `start_task + get_context_pack` to `os_begin_task`, or require `os_gate` immediately after fallback context retrieval.

Acceptance:
- A simulated wrapper failure blocks.
- A live fresh Codex prompt produces `codex_prompt_submitted` and `codex_preflight_completed` before useful work.
- A missing Context Pack cannot be counted as OS-ready.

### P0-2. Provenance/source mapping must resolve real source lineage

Current gap:
Graph health reports degraded/score 0 because accepted memory is not resolved to durable source chunks/provenance. The graph has many nodes and edges, but not enough lineage edges proving claims are source-backed.

Evidence:
- `.dino/index/graph-health.json` reports `accepted_instance_source_mapping_missing`.
- `src/graph-health.ts` and `src/lifecycle.ts` only detect a few single-value source fields, while newer accepted records use arrays like `source_paths`, source chunks use `claim_paths`, and provenance records use `source_chunk_path`.
- Verified RAG knowledge requires source/chunk/claim lineage.

Fix:
- Build a lineage resolver: accepted claim -> `source_paths` / Wiki claim path -> provenance `claim_paths` -> source chunk -> `source_uri`, `verification_status`, `last_verified`.
- Add graph edge types: `supports_claim`, `has_source_chunk`, `has_provenance`, `promoted_from`, `quarantined_by`, `used_in_context_pack`.
- Make real-vault graph-health a release/blocking check, not only synthetic temp-vault verification.

Acceptance:
- Verified RAG pack resolves from accepted memory to source chunks and source URLs.
- Graph health score is not 0 for source-backed accepted records.
- Unsupported internal behavior memories are labeled internal guidance, not external source truth.

### P0-3. Review/read-only mode must be genuinely read-only

Current gap:
Several subagents observed that DinoBrain task closure and hook/writeback can create, compound, commit, and push data even during audit/review work. That is useful for normal operation but wrong for critical review mode.

Evidence:
- `finish_task` can run auto-growth, auto-compounding, and auto-sync.
- Auto-compounding writes accepted behavior rules.
- Auto-sync can push allowed/conditional data when enabled.
- During this audit, multiple subagent finish flows produced data commits even though the app repo stayed read-only.

Fix:
- Add a hard `DINOBRAIN_REVIEW_MODE=1` or task-level `write_policy: read_only | local_only | sync_allowed`.
- In read-only mode, allow `os_begin_task` telemetry only if explicitly accepted, but block `finish_task` auto-growth, auto-compounding, and auto-sync.
- Separate `finish_task` trace writing from promotion/sync side effects.

Acceptance:
- A read-only audit can finish without creating accepted memories or pushing data.
- Observatory can mark read-only tasks separately.
- Tests assert no data repo commit in read-only mode.

### P0-4. Installer/update must never reset protected local data

Current gap:
Existing installs can move app/data repos through a branch reset path before pull. That can strand unpushed local commits, especially dangerous for `dinobrain-data`.

Evidence:
- Installer update flow calls checkout/reset-style logic on existing repos.
- User's goal depends on GitHub data recovery and knowledge compounding, so data repo commits are user data.

Fix:
- Replace reset semantics with clean-tree, ahead/behind/diverged checks, and `pull --ff-only`.
- If local commits or dirty files exist, fail with a clear repair path: `git_sync`, push, stash, or explicit destructive reset flag.
- Treat `dinobrain-data` as protected by default.

Acceptance:
- Reinstall/update refuses to overwrite dirty or ahead data repo.
- Destructive reset requires an explicit flag and warns about data loss.

## Consensus P1

### P1-1. Retrieval quality is not yet real hybrid RAG

Current gap:
Current live retrieval honestly reports `lexical_fallback_v2`; dense retrieval requires prebuilt vectors and exact query vectors. This is not real query-time dense retrieval.

Fix:
- Add an embedding provider or local embedding adapter.
- Generate query embeddings at runtime.
- Store record embeddings with dimensions/model metadata.
- Retrieve bounded dense top-K, fuse with BM25/sparse results, then rerank.
- Keep `lexical_fallback_v2` until dense canaries pass.

Acceptance:
- Synonym and Korean/English canaries improve versus lexical-only baseline.
- Retrieval metadata reports real dense model/index version.

### P1-2. Context eval shows high noise

Current evidence:
`verify:os` failed retrieval quality: recall was acceptable, but `max_noise=7` and `average_noise=5.9`, with most golden cases failing noise thresholds.

Fix:
- Add per-root/type budgets.
- Penalize broad behavior/task memories for source/wiki queries.
- Use source/provenance intent routing.
- Add hard canaries for recall, precision/noise, stale-memory rejection, and provenance-required answers.

Acceptance:
- Real-vault `eval:context` passes target recall and noise.
- Top Context Pack entries are relevant to the query type rather than generic accepted behavior rules.

### P1-3. Behavior eval does not yet evaluate behavior

Current gap:
The current behavior eval scores expected memory paths and terms in the request. It does not generate or judge the agent answer, so it cannot prove memory-on behavior is better.

Fix:
- Build paired memory-on/memory-off answer runs.
- Evaluate required facets, forbidden facets, faithfulness, answer relevance, source use, and task success.
- Keep retrieval eval separate from behavior eval.

Acceptance:
- Representative real-vault golden set exists.
- Memory-on beats memory-off on answer-quality metrics, not only path retrieval.

### P1-4. Auto-compounding needs review backpressure

Current gap:
Auto-compounded behavior rules can enter accepted memory directly, often with support count 1. As sessions grow, broad behavior rules can dominate retrieval and create noisy compounding.

Fix:
- Route new auto-compounded rules to candidate/hold unless support count or explicit review threshold is met.
- Add incremental high-water mark processing.
- Store deltas instead of full unchanged promotion arrays.
- Run lifecycle merge/demotion before accepted indexing.

Acceptance:
- Auto-generated rules do not enter default retrieval until reviewed or repeatedly supported.
- Compounding reports are bounded and old no-op cycles compacted.

### P1-5. SQLite fast path and cold storage are not durable enough

Current gap:
SQLite wiki shard and manifest can be deleted by invalidation and require manual rebuild. Accepted behavior/task records are indexed like normal knowledge; cold/hot metadata exists but is not enough to shove rarely used data away.

Fix:
- Replace delete-only invalidation with atomic refresh or row-level update.
- Keep old shard until new shard is ready.
- Add freshness manifest and degraded-mode signal.
- Carry `memory_type`, `temperature`, root, confidence, and last_used into SQLite.
- Enforce hot/warm/cold retrieval budgets.

Acceptance:
- `wiki.sqlite` and manifest are present after writes.
- Runtime stays on fast path or clearly reports degraded fallback.
- Cold behavior/task records are second-pass unless query intent asks for them.

### P1-6. Public auto-push policy is too permissive

Current gap:
The data repo is public, and auto-sync can push conditional operational/review data when defaults allow it. Public backup and complete private backup are different products.

Fix:
- Default public auto-push to reviewed public-safe roots only.
- Default `DINOBRAIN_AUTO_SYNC_PUSH=false` and `DINOBRAIN_AUTO_SYNC_ALLOW_CONDITIONAL=false` unless private/encrypted sync is configured.
- Share the same scanner between `auto_sync` and `verify-public-data-safety`.
- Use a private/encrypted backup path for raw operational continuity.

Acceptance:
- Public repo only receives reviewed, paraphrased, public-safe memory.
- Full OS restore can use private/encrypted operational backup.

### P1-7. Observatory must prove the active read loop, not just render a graph

Current gap:
Observatory shows activity, but Read Trace can be assembled from the latest pack/trace/event independently rather than proving the active task read its own context. The UI verifier is mostly API graph-shape smoke testing.

Fix:
- Add task-correlated read trace: task_id -> preflight -> context_pack -> used memories -> trace -> audit.
- Model phases: hook_pending, context_reading, verifier_running, main_running, blocked, stale.
- Add an operations-only graph fallback when wiki graph is degraded.
- Add Playwright/browser visual verification for visible chips, panels, nonblank/moving graph, and degraded states.

Acceptance:
- User can see which memories the current task read and whether finish/audit/sync are pending.
- Operations graph remains visible even when wiki graph is degraded.

### P1-8. Release/version parity needs hard gates

Current gap:
Package, installer, tag, release, and HEAD can drift. New PC recovery is unreliable unless release artifacts prove their source ref and data ref.

Fix:
- Gate release on `HEAD == v<package.version>`.
- Make setup version derived from package.
- Installer prints app ref, data ref, package version, setup version, and SHA.
- Verify GUI and CLI no-Git behavior match.
- Uninstall removes Codex and Claude hooks symmetrically.

Acceptance:
- Fresh install from release passes the same OS gates as local dev.
- Installer refuses ambiguous version drift.

## P2

- Build a final evidence registry collecting exact command outputs, live hook proof, eval results, graph health, installer proof, and restore proof.
- Add GraphRAG-style relation/community overlay after source/chunk/claim lineage works.
- Add long-term compaction for events, context packs, traces, and compounding reports.

## Ordered Implementation Plan

1. Safety first: wrapper fail-closed, review/read-only mode, protected installer update, public auto-push defaults.
2. Truth layer: lineage resolver, graph-health real-vault check, source/chunk/claim edges.
3. Retrieval layer: durable SQLite refresh, FTS/prefix candidate generation, real dense embeddings, query intent budgets.
4. Evaluation layer: real context canaries and paired behavior eval.
5. Growth layer: auto-compounding to candidate/hold first, lifecycle backpressure, hot/warm/cold memory temperature.
6. Observatory layer: task-correlated read trace and state phases.
7. Recovery layer: release parity, install/restore proof, private/encrypted full backup path.

## Twenty-Agent Refresh

The later 20-agent audit preserved this plan and sharpened seven mandatory
implementation fixes:

1. real dense hybrid retrieval and rerank evaluation;
2. fail-closed live pre-response proof;
3. lifecycle and queue cleanup;
4. atomic source/chunk/claim provenance;
5. memory-on/off answer-quality evaluation;
6. operation-log pollution control;
7. auto-sync proof and safety.

This pass already improved the safe first slice: default retrieval now excludes
task summaries and `.dino` operational files, recent tasks are only injected for
operation/recent-task intent, SQLite shards rebuild through temp-file replacement
with retry, and Korean correction cues are recognized by session/compounding
extraction. Live Codex Desktop proof, true dense retrieval, answer-quality eval,
and public/private sync boundaries remain open.

## Bottom Line

DinoBrain has a credible skeleton: hooks, tasks, context packs, finish traces, source chunks, SQLite shards, graph health, Observatory, compounding, and sync policy exist. But the OS is not yet the user's desired compounding LLM Wiki OS because the hard guarantees are incomplete:

- pre-response is not universally fail-closed at the wrapper/live-session boundary,
- source truth is not yet resolved through graph lineage,
- retrieval is still lexical fallback with high noise,
- behavior evaluation does not yet prove behavior improvement,
- auto-growth can increase accepted-memory noise,
- public auto-push and read-only review semantics are too loose,
- new-PC restore/version parity is not yet a hard, evidence-backed invariant.
