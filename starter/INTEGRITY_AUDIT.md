# CDE Integrity Audit

## Purpose

A CDE Integrity Audit assesses how well the current implementation aligns with the authoritative project context.

The audit produces a Coherence Report for human review. It is advisory and does not enforce workflow gates, modify documents, or change code.

## Inputs

The auditor should inspect:

- Authoritative context documents listed in `CDE_INDEX.md`
- Active and recently completed specifications
- `BACKLOG.md`, when present
- Learning artifacts
- Relevant source code
- Recent changes, when available

## Coherence Levels

Each audit dimension is rated from 1 to 5.

### Level 5: Strong

The implementation and context are strongly aligned. Gaps are minor, localized, and low risk.

### Level 4: Stable

The implementation and context are mostly aligned. Some inconsistencies exist, but they are limited and unlikely to mislead contributors.

### Level 3: Drifting

Noticeable gaps exist between context and implementation. Human review is recommended before further related work continues.

### Level 2: Fragmented

Multiple important gaps exist. Context is becoming unreliable for the audited area.

### Level 1: Critical

Context and implementation are materially misaligned. The audited area cannot be safely extended without human review.

## Audit Dimensions

### Traceability

Assesses whether implemented behavior and code structures can be traced to specifications, domain concepts, backlog items, or architectural intent.

Look for:

- Code modules without clear domain or architectural mapping
- Implemented behavior without a corresponding specification
- Specifications that appear partially implemented or unimplemented
- Backlog items whose implementation state is unclear

### Context Freshness

Assesses whether context documents reflect current implementation reality.

Look for:

- Recent code changes not reflected in relevant context
- Architectural changes absent from `ARCHITECTURE.md`
- Domain terms appearing in code but not in `DOMAIN.md`
- Stale assumptions in `CONTEXT.md`
- Learning artifacts that remain unconsolidated

### Architecture Alignment

Assesses whether the actual code structure follows declared architectural constraints.

Look for:

- Dependencies that violate documented boundaries
- New components or integration paths absent from architecture
- Directory or module structure diverging from declared architecture
- Repeated implementation patterns not represented as architectural decisions

### Learning Consolidation

Assesses whether learning that affects shared understanding has been captured and processed.

Look for:

- Learning artifacts that should be consolidated
- Repeated learnings across multiple tasks
- Open questions that block reliable future work
- Decisions made in code without corresponding learning capture

## Overall Coherence Level

When an overall level is useful, use the lowest dimension score as the default overall level.

The auditor may choose a different overall level only when the report explicitly explains why. Do not average dimension scores in a way that hides a critical weakness.

## Coherence Report Template

```md
# Coherence Report: [Project or Area Name]

## Summary

Date: [YYYY-MM-DD]
Audited scope: [files, modules, features, specs, or work lanes]
Auditor: CDE Integrity Auditor
Overall Coherence Level: [1-5]

## Dimension Scores

| Dimension | Level | Summary |
| --- | --- | --- |
| Traceability | [1-5] | [Short summary] |
| Context Freshness | [1-5] | [Short summary] |
| Architecture Alignment | [1-5] | [Short summary] |
| Learning Consolidation | [1-5] | [Short summary] |

## Key Findings

### Finding 1: [Title]

Evidence:

- [Context reference]
- [Code reference]

Interpretation:

[What the evidence suggests.]

Risk:

[Why this matters.]

Suggested human review:

[What humans should inspect or decide.]

## Orphaned or Weakly Traced Artifacts

- [Code artifact] - [reason]

## Stale or Possibly Stale Context

- [Context document or section] - [reason]

## Unconsolidated Learning Signals

- [Learning artifact or observed signal] - [reason]

## Open Questions

- [Question]

## Recommended Follow-up

- [Recommended human action]
```

## Operating Constraints

The auditor must not:

- Modify code
- Modify authoritative context
- Consolidate learning
- Create new specifications unless explicitly asked in a separate task
- Treat its score as a release gate
- Hide uncertainty behind confident language
