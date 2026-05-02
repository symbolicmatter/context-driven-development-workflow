# Integrity Audit

## Purpose

A Integrity Audit assesses how well the current implementation aligns with the authoritative project context.

The audit produces a Coherence Report for human review. It is advisory and does not enforce workflow gates, modify documents, or change code.

## Inputs

The auditor should inspect:

- Authoritative context documents listed in `CDE_INDEX.md`
- Active and recently completed specifications
- `BACKLOG.md`, when present
- Learning artifacts
- Relevant source code
- Recent changes, when available

## Audit Procedure

1. Determine the audit scope
   - Use the human request when a scope is provided.
   - If no scope is provided, audit the active project area, recent changes, or the whole repository when feasible.
   - State the chosen scope explicitly in the report.

2. Load authoritative context
   - Read `CDE_INDEX.md`.
   - Read all required context documents listed there.
   - Read applicable specifications, learning artifacts, and backlog entries.

3. Inspect implementation evidence
   - Inspect relevant source files, modules, tests, configuration, and integration points.
   - Inspect recent changes when available.
   - Use implementation evidence to assess alignment, not to redefine intent.

4. Compare context and implementation
   - Identify traceability gaps.
   - Identify stale or missing context.
   - Identify architectural drift.
   - Identify unconsolidated learning signals.

5. Produce the Coherence Report
   - Use the report template.
   - Separate evidence, interpretation, risk, uncertainty, and suggested human review.
   - Do not modify code or context.

## Coherence Levels

Each assessed audit dimension is rated from 1 to 5.

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

## Not Assessed

Use `N/A` when a dimension is outside the audit scope or when evidence is insufficient for responsible scoring.

Do not convert missing evidence into a low score unless the missing evidence is itself a coherence problem.

Explain every `N/A` rating in the report.

## Audit Dimensions

### Traceability

Assesses whether implemented behavior and code structures can be traced to specifications, domain concepts, backlog items, or architectural intent.

Look for:

- Code modules without clear domain or architectural mapping
- Implemented behavior without a corresponding specification
- Specifications that appear partially implemented or unimplemented
- Backlog items whose implementation state is unclear

### Context Freshness

Assesses whether authoritative context documents reflect current implementation reality.

Look for:

- Recent code changes not reflected in relevant context
- Architectural changes absent from `ARCHITECTURE.md`
- Domain terms appearing in code but not in `DOMAIN.md`
- Stale assumptions in `CONTEXT.md`
- Specifications that no longer describe current behavior

### Architecture Alignment

Assesses whether the actual code structure follows declared architectural constraints.

Look for:

- Dependencies that violate documented boundaries
- New components or integration paths absent from architecture
- Directory or module structure diverging from declared architecture
- Repeated implementation patterns not represented as architectural decisions

### Learning Consolidation

Assesses whether implementation learning that affects shared understanding has been captured and prepared for human consolidation.

Look for:

- Required learning artifacts that are missing
- Learning artifacts that should be consolidated
- Repeated learnings across multiple tasks
- Open questions that block reliable future work
- Decisions made during implementation without corresponding learning capture

## Overall Coherence Level

When an overall level is useful, use the lowest assessed dimension score as the default overall level.

The auditor may choose a different overall level only when the report explicitly explains why. Do not average dimension scores in a way that hides a critical weakness.

If one or more dimensions are `N/A`, state how that affects confidence in the overall level.

## Coherence Report Template

```md
# Coherence Report: [Project or Area Name]

## Summary

Date: [YYYY-MM-DD]
Audited scope: [files, modules, features, specs, or work lanes]
Auditor: CDE Integrity Auditor
Overall Coherence Level: [1-5 or N/A]

## Dimension Scores

| Dimension | Level | Summary |
| --- | --- | --- |
| Traceability | [1-5 or N/A] | [Short summary] |
| Context Freshness | [1-5 or N/A] | [Short summary] |
| Architecture Alignment | [1-5 or N/A] | [Short summary] |
| Learning Consolidation | [1-5 or N/A] | [Short summary] |

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
