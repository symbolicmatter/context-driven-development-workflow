# Model Selection Affects CDE Discovery Workflow Stability

Created: 2026-02-18
Confidence: medium
Consolidation Priority: medium
Related Context: DISCOVERY_GUIDE.md, AGENT_ROLES.md, starter/.kilo/agents/cde-discovery.md

## Context

- CDE Discovery workflow
- Structured document reconciliation
- Model use during context-heavy reasoning tasks

## Observation

GPT-5.2 repeatedly attempted to invoke Python tools to read local Markdown files, such as `CONTEXT.md`, even when the content was already available in chat context.

This behavior persisted despite prompt adjustments.

Switching to GPT-5-mini eliminated unnecessary tool invocation behavior and produced more stable document reasoning at lower cost.

## Learning

Higher-capability models may exhibit stronger tool-invocation heuristics in structured document workflows.

In context-heavy reasoning tasks such as CDE Discovery and cross-document consistency checks, simpler models may sometimes produce more stable behavior than larger models.

Model selection should consider behavioral predictability, not only raw reasoning capability.

## Implications

- Discovery and context reconciliation may need model-selection guidance that values stability and low tool friction.
- Tool-invocation loops should be treated as a workflow risk during context-heavy reasoning.
- Agent configuration may need to distinguish reasoning depth from operational predictability.

## Open Questions

- Is this behavior specific to one project and model combination, or recurring across CDE Discovery tasks?
- Should model-selection guidance live in starter operational guidance, Kilo configuration, or another document?
