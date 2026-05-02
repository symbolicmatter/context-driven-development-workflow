# Contributing

This project is developed by a single primary contributor with the assistance of AI coding agents operating under Context-Driven Engineering (CDE) and the Context-Driven Development Workflow (CDDW).

This document defines how changes are introduced safely and deliberately.

It is authoritative for both humans and AI agents.

## Scope of Contribution

Contributions to this project include:

- changes to code
- changes to specifications
- changes to context documents
- recorded learning intended for consolidation

There is no distinction between “human” and “AI” contributions. All changes are subject to the same discipline.

## Change Discipline

All changes must:

- be grounded in documented intent
- respect the current scope defined in PLAN.md
- preserve domain invariants defined in DOMAIN.md
- respect architectural boundaries defined in ARCHITECTURE.md
- comply with operational constraints defined in CONTEXT.md

Changes that are not explicitly in scope must not be introduced.

## Role Responsibilities

AI agents operate in clearly defined roles:

- Architecture interpretation is handled by the CDE Architect
- Implementation is handled by the CDE Implementer
- Learning consolidation is performed explicitly and deliberately

Agents must not exceed the authority of their role.

## Learning and Consolidation

Learning discovered during implementation must be captured according to LEARNINGS.md.

Captured learning does not automatically modify authoritative context.

Consolidation of learning into context documents is a deliberate act and must follow the process described in CONSOLIDATION.md.

## Review and Acceptance

A change is considered acceptable only when:

- it aligns with documented intent
- it introduces no undocumented assumptions
- it preserves conceptual integrity
- it does not violate scope or constraints

If these conditions cannot be met, the change must not proceed.

## Final Rule

When uncertainty arises, prefer stopping and clarifying over continuing with assumptions.

Stability, clarity and trustworthiness take precedence over speed or completeness.
