# Minimal Prompting Produces Shallow Domain Models

Created: 2026-02-17
Confidence: high
Consolidation Priority: medium
Related Context: DISCOVERY_GUIDE.md, AGENT_ROLES.md, starter/.kilo/agents/cde-discovery.md

## Context

- PRODUCT.md
- DOMAIN.md
- AGENTS.md
- Business and technical documentation
- CDE Discovery agent usage

Task: use the CDE Discovery agent to draft a first version of `DOMAIN.md` from a minimal prompt and template structure.

## Observation

A minimal prompt such as "Draft DOMAIN.md using the template. Ask questions if needed." resulted in a structurally correct but shallow domain model.

The draft had accurate surface-level concepts but limited modeling of authority boundaries, projection semantics, and distinctions between owned and externally authoritative concepts.

The agent did not proactively load or reason over additional contextual documents unless explicitly instructed to do so.

## Learning

Minimal prompting leads to structurally compliant but conceptually thin domain models.

Template structure alone does not produce domain rigor. Domain modeling depth requires explicit instruction to explore authority, identity, temporal semantics, projection semantics, and boundary ownership.

Agents should not be expected to infer this depth from the existence of a template alone.

## Implications

- Domain discovery guidance may need to make authority-boundary and projection-semantics exploration explicit.
- CDE Discovery agent instructions may need to classify domain drafting as a full-context-loading task.
- Example prompts may be needed to show the depth expected from serious domain discovery.
- Early domain models risk becoming feature-derived or UI-shaped if discovery prompts are too minimal.

## Open Questions

- Should deeper domain-modeling prompts live in `DISCOVERY_GUIDE.md`, starter agent configuration, or both?
- How much example prompting is enough without turning discovery guidance into prompt bloat?
