# DinoBrain Public Data Safety Report

Generated at: 2026-07-07T01:58:14.862Z
Status: degraded
Data repo: https://github.com/clockmansy/dinobrain-data.git
GitHub visibility: public

## Scan Scope

- tracked files scanned: 751
- untracked files classified: 665
- max bytes per file: 8388608

## Required Categories

- accepted_memories: 361
- task_summaries: 90
- traces: 69
- context_packs: 84
- events: 0
- gates: 17
- audits: 2
- operations_records: 51

## Findings

- blockers: 0
- warnings: 856

- warning: machine_local_path_marker :: .dino/audits/audit-20260706-232502-task-20260706-231712-OS_COMPLETION_C-5ab9c454.json (pattern="windows_drive_path", line=37)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260701-005837-hookEventName-UserPromptSubm.json (pattern="windows_drive_path", line=4)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260701-005837-hookEventName-UserPromptSubm.json (pattern="windows_drive_path", line=32)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260701-012635-hookEventName-UserPromptSubm.json (pattern="windows_drive_path", line=4)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260701-012635-hookEventName-UserPromptSubm.json (pattern="windows_drive_path", line=60)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260701-012725-Global-DinoBrain-hook-verifi.json (pattern="windows_drive_path", line=74)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260703-033041-manual-hook-env-test.json (pattern="windows_drive_path", line=61)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260703-033050-DinoBrain-live-Codex-hook-di.json (pattern="windows_drive_path", line=118)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260703-033452-DinoBrain-live-Codex-hook-di.json (pattern="windows_drive_path", line=143)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260703-035812-DinoBrain-installer-reinstal.json (pattern="windows_drive_path", line=142)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260705-014744-What-current-DinoBrain-proje.json (pattern="windows_drive_path", line=78)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260705-022742-DinoBrain-v2-QA-code-review-.json (pattern="windows_drive_path", line=193)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260705-023257-DinoBrain-v2-stability-fixes.json (pattern="windows_drive_path", line=185)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-150114-Fix-DinoBrain-installer-conf.json (pattern="windows_drive_path", line=5)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-150114-Fix-DinoBrain-installer-conf.json (pattern="windows_drive_path", line=43)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-160644-What-is-the-user-s-desired-d.json (pattern="windows_drive_path", line=283)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-160644-What-is-the-user-s-desired-d.json (pattern="windows_drive_path", line=284)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-161037-DinoBrain-OS-completion-cond.json (pattern="windows_drive_path", line=343)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-161037-DinoBrain-OS-completion-cond.json (pattern="windows_drive_path", line=344)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-161248-Observatory-UI-graph-complet.json (pattern="windows_drive_path", line=117)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260706-161254-What-DinoBrain-architecture-.json (pattern="windows_drive_path", line=243)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260707-002325-RAG-durable-knowledge-purity.json (pattern="windows_drive_path", line=258)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260707-003619-Audit-DinoBrain-node-lifecyc.json (pattern="windows_drive_path", line=253)
- warning: machine_local_path_marker :: .dino/context-packs/pack-20260707-011040-DinoBrain-finish_task-auto-g.json (pattern="windows_drive_path", line=318)
- warning: machine_local_path_marker :: .dino/gates/gate-20260706-150114-task-20260706-150114-Fix-DinoBrain-i.json (pattern="windows_drive_path", line=6)
- warning: unclassified_tracked_path :: .dino/provenance/anthropic-contextual-retrieval.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/aws-bedrock-knowledge-base.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/azure-search-rag-overview.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/elastic-rag.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/google-rag-engine-overview.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/haystack-first-rag-pipeline.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/haystack-rag-from-scratch.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/langchain-rag.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/langsmith-evaluation-concepts.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/llamaindex-rag.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/microsoft-graphrag.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/openai-embeddings-qa-cookbook.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/openai-retrieval-guide.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/pinecone-rag.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/rag-paper-2005-11401.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/rag-paper-2212-10496.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/rag-paper-2303-11366.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/rag-paper-2401-18059.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/rag-survey.json (policy="unclassified_path")
- warning: unclassified_tracked_path :: .dino/provenance/ragas-evaluation.json (policy="unclassified_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-150611.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-151658.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-152406.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-160949.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-161100.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-161556.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-161752.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-170112.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-231517.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-232451.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-233159.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260706-233639.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-001859.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-001909.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-001917.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-001942.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-002354.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-002403.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-002414.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-002432.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-003259.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-003753.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-003943.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-004218.json (policy="operation_compounding_path")
- warning: conditional_untracked_present :: .dino/compounding/compounding-cycle-20260707-004333.json (policy="operation_compounding_path")

## Policy Assertions

- Raw conversation archives must remain local-only and untracked.
- Candidate and review queue records must not appear in the default Wiki index.
- Public/private documentation must match observed GitHub visibility.
- Sensitive pattern matches are reported by type and line only; matched secret values are never printed.

