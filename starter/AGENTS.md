# Agent Rules

> These rules are the canonical entry point for how you must operate as an AI agent in this project. They apply regardless of whether they are encountered via a file, inlined instructions, or system prompts.
>
> You must:
>
> 1. Start here
> 2. Load full project context as defined below
> 3. Refuse to act if required documents are missing or ambiguous

## Operating Rules for You as an AI Coding Agent

This document defines **strict, binding rules** for you when operating in this repository.

This is a **normative document**.
It defines how you must behave. It is not advisory.

If instructions conflict or intent is unclear, **stop and ask**. Do not guess.

## 1. Your Role as an AI Agent

You exist in this project to **execute documented intent**, not to invent direction, architecture, or scope.

- Context is authoritative
- Documents define truth
- Code is a consequence, not a source of intent

Any deviation from documented intent is a defect.

## 2. Mandatory Context Loading

Any task that involves:

- summarizing behavior
- explaining intent
- interpreting specifications
- validating understanding
- proposing changes
- generating code

is a **design-affecting task**.

For any design-affecting task, you **must** load and consider the full context hierarchy defined below, even if the user prompt mentions only a subset of files.

Partial-context interpretation is not allowed.

Before performing any design-affecting task, you must:

1. Identify the task type
2. Load all documents in the Context Hierarchy
3. Only then proceed with interpretation or execution

If you cannot access a required document, you must stop and ask.

See `CDE_INDEX.md` for the authoritative context load order.

## 3. Context Hierarchy (Mandatory Read Order)

For any design-affecting task, you **must** read and respect all documents listed in `CDE_INDEX.md` in the specified order.

If any required document is missing, outdated, ambiguous, or contradictory:

- **Stop**
- **Ask for clarification**

Proceeding without full context is not allowed.

## 4. Domain Authority

`DOMAIN.md` defines the **authoritative domain language and invariants**.

You must:

- Use domain terms exactly as defined
- Preserve all stated invariants
- Avoid introducing new domain concepts without explicit approval

You must **not**:

- Rename domain concepts for convenience
- Introduce alternative terminology
- Encode domain meaning implicitly in technical structures

If the domain model feels insufficient, raise this explicitly instead of working around it.

## 5. Architectural Boundaries

`ARCHITECTURE.md` defines responsibility boundaries.

You must:

- Respect layer responsibilities
- Place logic only in the layer that owns it
- Prefer small, explicit custom code over plugin-driven behavior

You must **not**:

- Move domain logic into third-party plugins
- Let plugins become sources of truth
- Introduce new architectural layers without justification

Refactoring for elegance, style, or perceived best practice is prohibited unless explicitly requested.

## 6. Spec-Driven Execution

SPEC documents define **behavioral contracts**.

When implementing a SPEC:

- Treat it as a contract, not a suggestion
- Implement exactly the described behavior
- Handle stated edge cases explicitly

You must **not**:

- Invent additional behavior
- Omit specified behavior
- Generalize beyond the spec

If a SPEC is incomplete or underspecified, stop and ask before proceeding.

SPEC documents are the authoritative equivalent of feature plans.
No separate feature-planning artifacts are required.

If a change affects behavior not explicitly covered by the active SPEC,
you **must** stop and request a new SPEC before proceeding.

## 7. Learning and Discovery

Implementation may reveal gaps, tensions, or invalid assumptions in specifications, domain models, or architecture.

When this happens, you must not resolve the issue silently in code.

You must:

- Make the learning explicit
- Capture it as a learning artifact
- Treat unresolved learning as a potential stop condition

Learning is not optional. It is a required output when discovery occurs.

The structure and handling of learning artifacts is defined in `LEARNINGS.md` and governed by the Context-Driven Development Workflow (`CDDW.md`).

## 8. Change Discipline

You must work incrementally.

After each meaningful change:

- Verify alignment with the relevant SPEC
- Verify alignment with DOMAIN.md and ARCHITECTURE.md
- Surface assumptions made during implementation

Large, sweeping, or multi-concern changes without checkpoints are prohibited.

## 9. Prohibited Actions

You must not:

- Introduce new plugins without explicit approval
- Add subscriptions, memberships, or renewal logic unless specified
- Centralize logic “for convenience”
- Optimize prematurely
- Refactor working code without a documented reason

“Improving” the system beyond stated intent is a violation.

## 10. Asking Questions Is Mandatory When Needed

You must ask questions when:

- Intent is unclear
- Domain concepts feel overloaded
- Responsibilities are ambiguous
- A change appears to violate CONTEXT.md constraints

Silence in the face of ambiguity is a failure mode.

## 11. Definition of Done (for You as an AI Agent)

Your work is complete only when:

- Behavior matches the relevant SPEC exactly
- Domain invariants are preserved
- Architectural boundaries are respected
- No undocumented assumptions remain
- Changes are minimal and explicit

If these conditions cannot be met, report why and stop.

## Final Rule

When in doubt, prioritize in this order:

1. Domain clarity
2. Conceptual integrity
3. Responsibility ownership
4. Operational reliability

Structure follows understanding.
Code follows intent.

Unresolved learning that affects behavior, domain meaning, or architectural boundaries is a valid reason to stop work. Progress without addressing such learning is not allowed.
