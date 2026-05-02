# Context Discovery Guide

## Purpose

This document describes the recommended process for discovering and externalizing context
when starting a new project using CDE and CDDW.

It is operational guidance for working with CDE Discovery mode.
It complements, but does not replace, CDE or CDDW core definitions.

The intent of this guide is to delay solution thinking until problem understanding is explicit and inspectable.

# Core Principle

When starting from scratch:

> Stay in the problem domain as long as possible.
> Do not introduce structural or technical decisions before domain language and constraints are stable enough to justify them.

Default discovery order:

1. PRODUCT.md
2. DOMAIN.md
3. CONTEXT.md
4. PLAN.md
5. ARCHITECTURE.md
6. BACKLOG.md (when coordination needs justify it)

Discovery roles are responsible for protecting the problem domain from premature structural decisions. They may identify architectural tensions, but must not resolve them structurally.

Architecture should emerge from clarified domain and constraints —
not from early technical enthusiasm.

# Phase 0 – Bootstrapping

## Context State

At project start:

- Only PRODUCT.md may exist.
- CDE_INDEX.md must list only documents that exist.
- Do NOT reference non-existent authoritative documents.

CDE_INDEX.md evolves as documents become authoritative.

It is not a roadmap.
It is an authority registry.

# Phase 1 – PRODUCT Discovery

## Goal

Clarify intent, scope, value, and non-goals.

## Valuable Inputs

- Business case documents
- Existing project proposals
- Stakeholder notes
- Budget constraints
- Success criteria
- Decommissioning plans
- Competitive landscape

## Example Prompt

Use the **CDE Discovery** role.

```md
Please draft a PRODUCT.md capturing the problem, value proposition, scope, and non-goals.

Before drafting:

- Load all business and proposal documentation.
- Identify assumptions about users, scope boundaries, and success criteria.

Instructions:

- Focus on why and what.
- Avoid technical implementation details.
- Surface ambiguities explicitly.

If required input is missing, ask targeted clarification questions.
```

# Phase 2 – DOMAIN Discovery

## Goal

Define language, invariants, authority boundaries, and core concepts.

## Valuable Inputs

- PRODUCT.md
- Business documentation
- Technical documentation
- API documentation
- Existing system terminology
- Organizational constraints

## Modeling Focus

- Distinguish owned vs external concepts.
- Identify authority boundaries.
- Define invariants.
- Surface temporal semantics.
- Identify delegation semantics.
- Explicitly define non-concepts.

## Example Prompt

Use the **CDE Discovery** role.

```md
Please draft a rigorous DOMAIN.md using the standard CDE structure.

Before drafting:

* Load PRODUCT.md and all relevant documentation.
* Identify authority boundaries and projection semantics.
* Distinguish system-owned concepts from externally authoritative ones.

Instructions:

* Define invariants per concept.
* Avoid UI terminology.
* Surface modeling uncertainties explicitly.
* If the system appears read-only, examine whether projection semantics introduce domain complexity.

If context is insufficient, stop and ask specific questions.
```

# Phase 3 – CONTEXT Discovery

## Goal

Document constraints that shape architecture.

## Valuable Inputs

- Technical documentation
- Integration constraints
- Authentication details
- Hosting environment
- Organizational constraints
- Deployment timelines

## Example Prompt

Use the **CDE Discovery** role.

```md
Please draft CONTEXT.md documenting organizational, technical, and operational constraints.

Instructions:

- Do not restate PRODUCT or DOMAIN.
- Identify constraints that shape future design decisions without defining structure.
- Constraints must describe limits, not solutions.
- Surface trade-offs explicitly.
```

# Phase 4 – PLAN Discovery

## Goal

Clarify sequencing and commitment strategy.

## Valuable Inputs

- Timeline constraints
- Decommission deadlines
- Budget phases
- Integration dependencies

## Discipline Reminder

PLAN defines sequencing and commitment intent.
It must not introduce architectural structure or technical layering decisions.
If structural decisions emerge during planning, defer them to ARCHITECTURE.md.
PLAN may sequence architectural work, but must not define architectural content.

## Example Prompt

Use the **CDE Discovery** role.

```md
Please draft PLAN.md outlining milestones, sequencing logic, and major risks.

Ensure alignment with:

* PRODUCT
* DOMAIN
* CONTEXT

Surface uncertainties that affect sequencing.
```

# Phase 5 – ARCHITECTURE Discovery

## Precondition

DOMAIN and CONTEXT must be sufficiently stable that:

- Core domain concepts are explicitly defined.
- Authority boundaries are understood.
- Major constraints are documented.
- Open questions do not affect structural decisions.

If these conditions are not met, return to Discovery. Architecture created on unstable domain foundations will likely require revision.

## Goal

Define technical structure and responsibility boundaries.

## Valuable Inputs

- DOMAIN.md
- CONTEXT.md
- External doctrine (if applicable)
- Organizational standards

## Example Prompt

Use the **CDE Architect** role.

```md
Please draft ARCHITECTURE.md following CDE template structure.

Before drafting:

- Load DOMAIN and CONTEXT fully.
- Identify tensions between constraints and design choices.

Instructions:

- Make reasoning explicit.
- Trace decisions to domain and constraints.
- Surface conflicts instead of silently resolving them.
```

# Phase 6 – BACKLOG Setup (Optional but Recommended)

## Precondition

BACKLOG.md should be introduced only once:

- intent is explicit enough to prioritize work
- structural boundaries are stable enough to avoid speculative task decomposition
- the project needs visible coordination across slices, contributors, or disciplines

## Goal

Create a lightweight operational work queue that connects planning intent to concrete specifications.

## Discipline

BACKLOG.md:

- defines candidate and selected work
- may track active specs, blocked work, and completed items
- must not redefine scope from PRODUCT.md
- must not redefine sequencing intent from PLAN.md
- must not absorb architectural or domain decisions

## Example Prompt

Use the appropriate coordination role.

```md
Please draft BACKLOG.md as a lightweight operational coordination file.

Before drafting:
- Load PRODUCT.md, PLAN.md, and ARCHITECTURE.md if present.
- Identify near-term work, likely spec candidates, blocked items, and possible work lanes.

Instructions:
- Keep items short and actionable.
- Do not include detailed design.
- Make active work and spec candidates easy to scan.
- If the project is small and sequential, keep the backlog minimal.
```

# Index Management During Discovery

## Rule

CDE_INDEX.md must reflect only existing authoritative documents.

## During Discovery

- After stabilizing PRODUCT.md → add to index.
- After stabilizing DOMAIN.md → add to index.
- After stabilizing CONTEXT.md → add to index.
- Do not pre-declare future documents.

Stabilization means the document is coherent, internally consistent, and no major ambiguities remain that would affect downstream decisions.

Index reflects authority.
It does not predict it.

# Common Failure Modes

- Jumping to architecture too early.
- Treating read-only systems as domain-light.
- Allowing template structure to substitute for modeling depth.
- Over-relying on agent initiative.
- Leaving non-existent documents in index.
- Mixing roadmap and authority registry.
- Letting PLAN or CONTEXT documents drift into premature architectural design.

# State Transitions (Conceptual)

Bootstrapping → Domain Clarification → Constraint Clarification → Sequencing → Architecture Stabilization → Backlog Coordination → Implementation

This guide assumes linear progression for clarity.
In practice, discovery is iterative.

However, iteration should move backward in the sequence, not forward prematurely. Moving forward without stabilizing understanding increases the risk of rework and structural inconsistency.

If architectural thinking reveals missing domain clarity, return to DOMAIN or CONTEXT.
Do not compensate for unclear domain modeling with technical structure.

# Relationship to Learning Artifacts

Discovery often produces:

- Invalidated assumptions
- Refined domain concepts
- Authority boundary clarification

Such learning must be captured in LEARNINGS.md
and processed through consolidation.

Discovery without consolidation leads to drift.
