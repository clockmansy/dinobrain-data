---
title: RAG Methodology Anchor Catalog
summary: Registry of user-provided RAG methodology sources, now linked to a verified summary knowledge pack for the exact opened links.
source_status: mixed_verified
confidence: medium
last_verified: 2026-07-07
tags: [rag, llm-wiki, source-lineage, retrieval-quality, anchor-catalog, verified-summary]
---

# RAG Methodology Anchor Catalog

Status: mixed. Original URL anchors were preserved as anchor-only records, then the exact listed links were opened directly and distilled into a verified summary knowledge pack.
Recorded at: 2026-07-06T23:23:45.973Z
Verified summary added: 2026-07-07T00:45:00Z

Verified knowledge pack: `20_Wiki/RAG-Verified-Knowledge-Base.md`
Accepted memory: `50_Instances/accepted/rag-verified-knowledge-v1.json`
Cross-review report: `60_Operations/rag-learning/rag-verification-cross-review-20260707.md`

This catalog preserves RAG methodology URLs and internal topic names supplied by the user from another public OS learning pass. The exact links listed under URL Anchors have now been opened directly and summarized in the verified knowledge pack above. The original source chunk files remain bounded source records rather than raw full-page dumps.

Use these anchors as the next source-truth backlog for the LLM Wiki: fetch a source, create bounded chunks, link concrete claims, review them, then allow the reviewed claims into Context Packs.

## Learning Packet Role

The user confirmed this packet as a cross-OS RAG learning seed for DinoBrain. Treat it as durable methodology memory for future retrieval work, with one important boundary: the upstream OS reportedly had 55 RAG methodology URLs, but this local catalog can only preserve exact URLs supplied or already present here. The representative anchors below are registered; any missing upstream URLs must be imported from an exact source list before being treated as local anchors.

The durable lesson is not that the linked pages prove any claim yet. The lesson is the target architecture for DinoBrain retrieval quality: LLM Wiki plus source/chunk/claim lineage, contextual chunking, sparse+dense hybrid retrieval, rank fusion, reranking, retrieval canaries, and behavior evaluation.

## URL Anchors

### contextual-retrieval

- [Anthropic Contextual Retrieval](https://www.anthropic.com/engineering/contextual-retrieval) -> `30_Sources/chunks/anthropic-contextual-retrieval.json`

### embeddings

- [OpenAI embeddings QA cookbook](https://developers.openai.com/cookbook/examples/question_answering_using_embeddings) -> `30_Sources/chunks/openai-embeddings-qa-cookbook.json`

### evaluation

- [RAGAS evaluation](https://docs.ragas.io/en/stable/) -> `30_Sources/chunks/ragas-evaluation.json`
- [LangSmith evaluation concepts](https://docs.langchain.com/langsmith/evaluation-concepts) -> `30_Sources/chunks/langsmith-evaluation-concepts.json`

### framework-rag

- [LangChain RAG](https://docs.langchain.com/oss/python/langchain/rag) -> `30_Sources/chunks/langchain-rag.json`
- [LlamaIndex RAG](https://developers.llamaindex.ai/python/framework/understanding/rag/) -> `30_Sources/chunks/llamaindex-rag.json`
- [Haystack first RAG pipeline](https://haystack.deepset.ai/tutorials/27_first_rag_pipeline) -> `30_Sources/chunks/haystack-first-rag-pipeline.json`
- [Haystack RAG from scratch](https://haystack.deepset.ai/blog/rag-pipelines-from-scratch) -> `30_Sources/chunks/haystack-rag-from-scratch.json`

### graph-rag

- [Microsoft GraphRAG](https://microsoft.github.io/graphrag/) -> `30_Sources/chunks/microsoft-graphrag.json`

### knowledge-base

- [AWS Bedrock Knowledge Base](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html) -> `30_Sources/chunks/aws-bedrock-knowledge-base.json`

### paper

- [RAG paper anchor arXiv 2005.11401](https://arxiv.org/abs/2005.11401) -> `30_Sources/chunks/rag-paper-2005-11401.json`
- [RAG paper anchor arXiv 2303.11366](https://arxiv.org/abs/2303.11366) -> `30_Sources/chunks/rag-paper-2303-11366.json`
- [RAG paper anchor arXiv 2401.18059](https://arxiv.org/abs/2401.18059) -> `30_Sources/chunks/rag-paper-2401-18059.json`
- [RAG paper anchor arXiv 2212.10496](https://arxiv.org/abs/2212.10496) -> `30_Sources/chunks/rag-paper-2212-10496.json`

### rag-engine

- [Google RAG Engine overview](https://docs.cloud.google.com/gemini-enterprise-agent-platform/build/rag-engine/rag-overview) -> `30_Sources/chunks/google-rag-engine-overview.json`

### rag-overview

- [Pinecone RAG explanation](https://www.pinecone.io/learn/retrieval-augmented-generation/) -> `30_Sources/chunks/pinecone-rag.json`
- [Elastic RAG explanation](https://www.elastic.co/what-is/retrieval-augmented-generation) -> `30_Sources/chunks/elastic-rag.json`
- [Microsoft Azure AI Search RAG overview](https://learn.microsoft.com/en-us/azure/search/retrieval-augmented-generation-overview) -> `30_Sources/chunks/azure-search-rag-overview.json`

### retrieval

- [OpenAI Retrieval guide](https://developers.openai.com/api/docs/guides/retrieval) -> `30_Sources/chunks/openai-retrieval-guide.json`

### survey

- [RAG-Survey](https://github.com/Tongji-KGLLM/RAG-Survey) -> `30_Sources/chunks/rag-survey.json`

## Topic Backlog Without Exact URLs In This Thread

The user also named these RAG components or internal OS records, but did not provide exact URLs or file exports for all of them in this thread. They should stay as a follow-up backlog rather than invented source anchors.

- Pinecone chunking strategies
- Jina late chunking
- Weaviate hybrid search
- Milvus hybrid search
- Qdrant hybrid search and reranking
- Cohere rerank
- Voyage reranker
- Pinecone rerank
- Weaviate rerank
- LlamaIndex BM25 retriever
- Haystack retrievers
- OpenAI embeddings
- SBERT STS
- HuggingFace MTEB
- RAGAS metrics
- Research-backed Learning Loop Health for Cognitive Continuity OS
- Research-backed Cognitive Continuity OS Growth Criteria
- OS memory growth diagnosis and improvement plan
- LLM Wiki
- Karpathy LLM Wiki reference summary
- learning-loop-health.md
- llm-wiki-visual-layer-spec.md
- source lineage and source chunk mapping design
- rag-quality report
- rag_canaries.json
- RTD retrieval canary records

## Guardrails

- URL anchors are provenance candidates, not verified source truth.
- Do not use these anchors as factual support until source chunks are fetched and reviewed.
- Do not store raw full pages or copyrighted full-text dumps.
- Keep claim lineage at source/chunk/claim granularity.
- Use retrieval canaries and behavior evaluation to prove these sources improve future answers.
