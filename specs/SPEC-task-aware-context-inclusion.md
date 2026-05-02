# SPEC: Task-Aware Context Inclusion

Created: 2026-05-02
Status: Draft

## Purpose

Define a mechanism for loading relevant context documents based on the task without making every context document part of the mandatory load order.

## Problem

The starter includes generic context documents such as `EXCEPTION_HANDLING.md` and `TESTING_STRATEGY.md`.

These documents are useful and may be authoritative for relevant tasks, but they should not always be loaded for every task.

If every context document becomes mandatory:

- agents waste context window on irrelevant material
- the mandatory load order becomes noisy
- adding useful context documents becomes expensive
- projects are incentivized to avoid documenting reusable guidance

If optional documents are not indexed:

- agents may miss relevant constraints
- important context becomes invisible
- task execution depends on accidental discovery

## Scope

This SPEC defines the behavior of a task-aware context inclusion mechanism for CDDW-aligned starter projects.

It applies to:

- `CDE_INDEX.md`
- starter project agent rules
- task-specific context loading
- optional but authoritative context documents

## Required Model

The context index must distinguish between:

- mandatory context loaded for all design-affecting tasks
- task-specific context loaded when the task matches declared triggers
- operational references loaded for specific workflow activities
- non-authoritative examples or notes

## Required Behavior

Before a design-affecting task, the agent must:

1. Load mandatory context documents in the declared order.
2. Inspect the task request for relevant task types, affected areas, and keywords.
3. Identify task-specific context documents whose declared triggers match the task.
4. Load the matched task-specific context documents before interpreting or implementing the task.
5. State which task-specific documents were loaded when the selection affects behavior.
6. Stop if a matched task-specific document is missing or contradictory.

## Index Requirements

The context index must be able to express, for each optional context document:

- path
- responsibility
- authority level
- when to load
- examples of matching task types
- whether the document is normative or advisory

## Example Context Categories

The mechanism should support documents such as:

- `TESTING_STRATEGY.md` for testing, TDD, acceptance, and Definition of Done tasks
- `EXCEPTION_HANDLING.md` for error handling, logging, failure translation, and observability tasks
- `INTEGRITY_AUDIT.md` for integrity audit tasks
- `UX_GUIDELINES.md` for interaction and UI behavior tasks, when present

## Required Agent Behavior

Agents must not treat optional context as optional once it matches the task.

If a task invokes a relevant domain covered by a task-specific document, that document becomes required for that task.

Agents must not skip matched context for convenience.

Agents must not load unrelated optional documents merely because they exist.

## Acceptance Criteria

- `CDE_INDEX.md` can represent mandatory and task-specific context separately.
- `TESTING_STRATEGY.md` can be declared as required for testing-related implementation tasks without being mandatory for all tasks.
- `EXCEPTION_HANDLING.md` can be declared as required for failure-handling tasks without being mandatory for all tasks.
- Agents have a clear procedure for selecting task-specific context.
- Missing matched context causes a stop condition.
- Unmatched optional context does not have to be loaded.
- The mechanism does not redefine CDE document authority or CDDW workflow roles.

## Non-Goals

- Do not define a complex ontology of every possible task type.
- Do not require semantic search or automation hooks in the first version.
- Do not make optional context documents globally mandatory.
- Do not turn the context index into a roadmap of future documents.

## Open Questions

- Should `CDE_INDEX.md` remain Markdown, or should the task-aware metadata move to YAML?
- Should matching be based on human-readable triggers only, or formal tags?
- Should task-specific context selection be reported in every final response or only when it changes behavior?
