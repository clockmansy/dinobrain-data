---
title: DinoBrain RAG Roadmap
summary: Project roadmap for contextual retrieval, hybrid search, provenance, reranking, evaluation, and LLM Wiki growth.
source_status: internal
confidence: high
last_verified: 2026-07-07
tags: [dinobrain, project, rag, retrieval, llm-wiki, provenance, evaluation]
source_paths: [20_Wiki/RAG-Verified-Knowledge-Base.md, 20_Wiki/RAG-Methodology-Anchor-Catalog.md]
---

# DinoBrain RAG Roadmap

DinoBrain's LLM Wiki should route the agent quickly to meaningful information while old or low-value records are held, archived, or reviewed. The RAG roadmap is:

- Keep URL anchors separate from verified source chunks.
- Store source, chunk, claim, and review lineage separately.
- Use BM25 plus real dense vector retrieval before calling a mode hybrid.
- Use rank fusion and a bounded reranker only after first-stage recall is healthy.
- Measure context precision, recall, noise, behavior lift, and latency.
- Use graph structure for lineage and relation-heavy questions, not as a substitute for retrieval quality.

## Current Constraint

When no dense vector provider or index is configured, DinoBrain must report `lexical_fallback_v2` and avoid claiming semantic hybrid quality.
