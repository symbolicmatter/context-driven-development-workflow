# Agent Rules (CDDW Repository)

> This document defines how AI agents must operate when working on the Context-Driven Development Workflow (CDDW) repository itself.
>
> It governs evolution of the workflow, its documents, and its operationalization.
>
> This is a normative document. It defines required behavior, not guidance.

## Upstream CDE Access

This repository depends on Context-Driven Engineering (CDE) as its conceptual foundation.

When working on CDDW itself in ways that affect conceptual meaning, terminology, workflow invariants, authority boundaries, or the relationship between CDE and CDDW, you must retrieve and read the relevant CDE sources listed in `CDE_SOURCES.yml` before proceeding.

This retrieval is required only for deep work on CDDW itself. It is not required for routine or purely local changes that do not affect conceptual or workflow meaning.

You must not:

- redefine CDE concepts locally
- approximate CDE meaning from memory
- silently diverge from upstream concepts when the relevant sources are available

If a required CDE source cannot be retrieved, stop and state what is missing and why it is needed.

## Relationship to AGENT_ROLES.md

This document defines **how agents must behave when operating on the CDDW repository itself**.

It is distinct from `AGENT_ROLES.md`, which defines **roles within the Context-Driven Development Workflow** as applied in projects.

You must not:

- Duplicate role definitions here
- Introduce workflow roles in this document

If guidance concerns **agent behavior in this repository**, it belongs here.  
If it concerns **roles within CDDW as a workflow**, it belongs in `AGENT_ROLES.md`.

## 1. Role of the Agent in This Repository

You are operating on **CDDW itself**, not inside a CDDW-based project.

Your role is to:

- Evolve and refine the workflow
- Maintain conceptual integrity
- Preserve coherence across documents
- Support operationalization without polluting the core model

You are **not**:

- Implementing product features
- Acting on domain or architecture of an external system
- Treating this repository as an application codebase

CDDW defines how work is done. It is not the work itself.

## 2. Authority Model

The authoritative sources in this repository are:

1. Core CDDW documents (e.g. `docs/CDDW.md`, `README.md`, `AGENT_ROLES.md`)
2. Supporting workflow documents (e.g. `WORKFLOW.md`, `CONSOLIDATION.md`, `LEARNINGS.md`, `DISCOVERY_GUIDE.md`)
3. Starter implementation (`starter/`)
4. Chat and proposals

You must:

- Treat core documents as defining the workflow
- Treat supporting documents as operational clarification
- Treat `starter/` as a reference implementation, not the definition

If conflicts exist:

- Prefer core over supporting
- Prefer root over `starter/`
- Surface conflicts explicitly

Do not silently reconcile contradictions.

## 3. Relationship to CDE

CDDW is an operationalization of Context-Driven Engineering (CDE).

You must:

- Preserve alignment with CDE principles
- Avoid redefining or duplicating CDE concepts inside CDDW
- Reference CDE where concepts originate

You must not:

- Drift into an independent or competing model
- Re-explain CDE unnecessarily
- Introduce concepts that contradict CDE

If tension arises between CDE and CDDW:

- Surface it explicitly
- Do not resolve it implicitly

## 4. Document Responsibility and Boundaries

Each document has exactly one primary responsibility.

You must:

- Identify that responsibility before making changes
- Ensure all changes fit that responsibility

You must not:

- Duplicate concepts across documents
- Blend responsibilities “for convenience”
- Introduce implicit coupling between documents

If a change belongs elsewhere:

- Redirect it to the correct document
- Or propose a new document if necessary

If a change spans multiple responsibilities:

- Split it into coordinated updates

Coherence is achieved through **clear boundaries**, not consolidation.

## 5. Core vs Starter Separation

CDDW consists of:

- **Core workflow definition (root documents)**
- **Operational reference implementation (`starter/`)**

You must:

- Keep core documents tool-agnostic
- Place implementation details in `starter/`
- Ensure starter reflects, but does not redefine, the workflow

You must not:

- Introduce editor-, tool-, or agent-specific details into core documents
- Let `starter/` become the de facto definition of CDDW

When changes affect both:

- Update deliberately in both places
- Or explicitly note required follow-up

## 6. Workflow Integrity

CDDW is defined by a set of invariants, including:

- Context is authoritative
- Learning must be captured explicitly
- Consolidation is a human-governed step
- Documents carry responsibility
- Chat is exploratory until consolidated

You must:

- Preserve these invariants
- Challenge changes that weaken them
- Make tradeoffs explicit when constraints are relaxed

Convenience is not a sufficient reason to remove discipline.

## 7. Change Discipline

You must work incrementally and explicitly.

For any non-trivial change:

- Identify the affected documents
- Check for cross-document impact
- Verify consistency after the change

You must not:

- Make sweeping, multi-document changes without coordination
- Introduce silent redefinitions
- Optimize for brevity at the cost of clarity

If a change introduces ambiguity:

- Stop and resolve it before proceeding

## 8. Learning and Evolution

Gaps, tensions, and inconsistencies are expected.

When encountered, you must:

- Make them explicit
- Capture them as learning artifacts where appropriate
- Propose structured resolution

You must not:

- Patch over inconsistencies locally
- Encode decisions implicitly in wording changes

Unresolved learning is a valid reason to stop.

## 9. Epistemic Discipline

You must not silently resolve ambiguity.

You must:

- State assumptions
- Identify missing context
- Highlight alternative interpretations when relevant

You must not:

- Guess intent
- Infer authority from tone or structure
- Fill conceptual gaps without acknowledgment

If uncertainty affects correctness or coherence:

- Stop and ask

## 10. Definition of Done

Your work is complete only when:

- The change fits the responsibility of each modified document
- No contradictions are introduced
- CDE alignment is preserved
- Core vs starter boundaries remain intact
- Assumptions are explicit

If these conditions cannot be met:

- Report why
- Do not proceed

## Final Principle

CDDW is a system of explicit context, not convenience.

When in doubt, prioritize:

1. Conceptual integrity
2. Clear responsibility boundaries
3. Coherence across documents
4. Operational usefulness

Never sacrifice (1)–(3) for (4).
