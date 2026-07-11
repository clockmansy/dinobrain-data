---
title: RAG Verified Knowledge Base
summary: Verified, source-backed RAG methodology knowledge distilled from direct URL review and 10-agent cross-review.
source_status: verified_summary
confidence: high
last_verified: 2026-07-07
tags: [rag, llm-wiki, retrieval-quality, provenance, hybrid-search, reranking, evaluation]
---

# RAG Verified Knowledge Base

Status: verified summary, accepted for DinoBrain memory use.
Verification date: 2026-07-07.

This file supersedes the anchor-only status of the initial RAG methodology catalog for the exact links listed below. It does not store raw full pages. It stores bounded, paraphrased claims with source URLs and cross-review outcomes.

## Verification Method

- Main Codex session opened the exact user-supplied RAG methodology links directly.
- Ten subagents reviewed separate source groups and cross-checked the resulting claims.
- The final purity pass filtered claims into ACCEPT, HOLD, RECLASSIFY, and REJECT.
- Accepted claims are intended for DinoBrain LLM Wiki and future retrieval-quality work.

## Accepted Claims

1. Core RAG separates ingestion/indexing from query-time retrieval and generation. Query-time RAG retrieves relevant source units and passes them with the user request to the model.
2. RAG can improve grounding, freshness, and traceability, but only when retrieved context is relevant, trustworthy, and authorized. RAG is not a truth guarantee.
3. Durable RAG requires source/chunk/claim provenance. A memory claim should be linked back to source URL, chunk identity, retrieval path, and review status.
4. Chunking is an application-level design choice. Long documents should be split into retrievable units with stable IDs and parent-document metadata; there is no universal chunk size.
5. Contextual Retrieval is an ingestion-time enrichment method: add short, chunk-specific context before embedding and lexical indexing. Published performance numbers are provider and benchmark specific, so DinoBrain must validate locally.
6. Hybrid retrieval should mean real sparse/BM25 retrieval plus real dense vector retrieval, fused by a rank or score fusion strategy. If dense retrieval is only lexical fallback, the system must label it honestly.
7. Reranking belongs after bounded first-stage retrieval and fusion. It can improve precision, but it cannot recover missing candidates, and it adds latency/cost.
8. HyDE and RAPTOR are optional retrieval-support methods, not core RAG requirements. Reflexion is an agent-memory/feedback technique, not a core RAG component.
9. GraphRAG is a graph overlay for entity, relationship, community, multi-hop, and cross-document synthesis. It should be used for workloads that need graph reasoning, not as a default replacement for ordinary snippet retrieval without evaluation.
10. Evaluation must separate retrieval quality from answer behavior. DinoBrain should measure context precision/recall/noise, faithfulness, response relevance, task success, memory-on vs memory-off deltas, and latency.
11. Managed knowledge-base products are provider adapters with different ingestion, ACL, citation, region, cost, and observability behavior. They should not be treated as one generic vector store.
12. OpenAI Retrieval/vector stores are managed semantic retrieval over uploaded user data. The archived embeddings cookbook is useful as conceptual background, but current API behavior should be checked against the active Retrieval guide.

## Hold Or Reclassify

- Lewis RAG details belong to the original paper context; preserve them as historical architecture, not a direct DinoBrain implementation mandate.
- Anthropic Contextual Retrieval performance deltas are useful evidence but must be treated as benchmark-specific until DinoBrain has local canary proof.
- Cloud KB feature matrices are provider-specific and can drift.
- MTEB and STS benchmarks are embedding-model priors, not proof that DinoBrain's memory loop works.
- HyDE, RAPTOR, GraphRAG, Reflexion, and managed KB products should not be labeled as mandatory core RAG components.

## Rejected Generalizations

- "RAG guarantees truth."
- "A lexical fallback can honestly be called live dense hybrid retrieval."
- "Reranking fixes bad recall."
- "More memory automatically means better behavior."
- "URL anchors alone are verified knowledge."

## Source Anchors Verified Directly

- RAG-Survey: https://github.com/Tongji-KGLLM/RAG-Survey
- Anthropic Contextual Retrieval: https://www.anthropic.com/engineering/contextual-retrieval
- Pinecone RAG overview: https://www.pinecone.io/learn/retrieval-augmented-generation/
- Elastic RAG overview: https://www.elastic.co/what-is/retrieval-augmented-generation
- Microsoft Azure AI Search RAG overview: https://learn.microsoft.com/en-us/azure/search/retrieval-augmented-generation-overview
- AWS Bedrock Knowledge Bases: https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html
- Google RAG Engine overview: https://docs.cloud.google.com/gemini-enterprise-agent-platform/build/rag-engine/rag-overview
- OpenAI Retrieval guide: https://developers.openai.com/api/docs/guides/retrieval
- OpenAI embeddings QA cookbook: https://developers.openai.com/cookbook/examples/question_answering_using_embeddings
- LangChain RAG: https://docs.langchain.com/oss/python/langchain/rag
- LlamaIndex RAG: https://developers.llamaindex.ai/python/framework/understanding/rag/
- Haystack first RAG pipeline: https://haystack.deepset.ai/tutorials/27_first_rag_pipeline
- Haystack RAG from scratch: https://haystack.deepset.ai/blog/rag-pipelines-from-scratch
- Microsoft GraphRAG: https://microsoft.github.io/graphrag/
- Ragas evaluation: https://docs.ragas.io/en/stable/
- LangSmith evaluation concepts: https://docs.langchain.com/langsmith/evaluation-concepts
- Lewis RAG paper: https://arxiv.org/abs/2005.11401
- HyDE paper: https://arxiv.org/abs/2212.10496
- RAPTOR paper: https://arxiv.org/abs/2401.18059
- Reflexion paper: https://arxiv.org/abs/2303.11366

## Supplemental Component Sources Verified

- Weaviate hybrid search: https://docs.weaviate.io/weaviate/concepts/search/hybrid-search
- Milvus hybrid search: https://milvus.io/docs/hybrid_search_with_milvus.md
- Qdrant hybrid queries: https://qdrant.tech/documentation/search/hybrid-queries/
- Qdrant reranking and hybrid search: https://qdrant.tech/documentation/tutorials-basics/reranking-hybrid-search/
- Cohere reranking: https://docs.cohere.com/docs/reranking-quickstart
- Voyage reranker: https://docs.voyageai.com/docs/reranker
- Pinecone rerank results: https://docs.pinecone.io/guides/search/rerank-results
- Weaviate reranking: https://docs.weaviate.io/weaviate/search/rerank
- Pinecone data modeling: https://docs.pinecone.io/guides/index-data/data-modeling
- Pinecone chunking strategies: https://www.pinecone.io/learn/chunking-strategies/
- Jina late chunking: https://jina.ai/news/late-chunking-in-long-context-embedding-models/
- Jina API schema reference: https://api.jina.ai/openapi.json
- Cohere rerank API reference: https://docs.cohere.com/reference/rerank

## DinoBrain Implementation Guidance

- Store source URLs and bounded chunks separately from accepted claims.
- Keep accepted claims small and composable so future context packs can retrieve only what is needed.
- Label retrieval mode honestly. If dense embeddings are absent, expose `lexical_fallback_v2`.
- Add canaries before claiming quality improvement: synonym recall, Korean/English mixed queries, provenance-required queries, stale-memory rejection, and memory-on vs memory-off task comparisons.
- Make behavior gates verify system state rather than trusting self-reported values.
- Prefer GraphRAG for relation-heavy or cross-document synthesis queries; keep simple lexical/dense hybrid retrieval for direct fact and how-to queries.
