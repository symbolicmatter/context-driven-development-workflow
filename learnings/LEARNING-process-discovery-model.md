# Model Selection Impact on CDE Discovery Workflow

## Context

Use of GPT-5.2 and GPT-5-mini models during CDE Discovery workflow for structured document reconciliation.

## Observation

GPT-5.2 repeatedly attempted to invoke Python tools to read local Markdown files (e.g., CONTEXT.md), even when the content was already available in chat context. This behavior persisted despite prompt adjustments.

Switching to GPT-5-mini eliminated unnecessary tool invocation behavior and resulted in stable, predictable document reasoning at significantly lower cost.

## Learning

Higher-capability models may exhibit increased tool-invocation heuristics in structured document workflows.

In context-heavy reasoning tasks (CDE Discovery, cross-document consistency checks), simpler models may:

- Produce more stable behavior,
- Avoid unnecessary tool calls,
- Reduce workflow friction,
- Lower operational cost.

Model selection should consider behavioral predictability, not just raw reasoning power.

## Implications

- CDDW should include guidance on model selection per workflow phase.
- Discovery and context reconciliation phases may favor stability over maximal reasoning depth.
- Tool-invocation loops are a workflow anti-pattern and should be monitored.

## Confidence

Medium (single project observation; requires further validation)
