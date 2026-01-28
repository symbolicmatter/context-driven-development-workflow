---
subject: CDDW
description: Required format and constraints for learning artifacts in the Context-Driven Development Workflow
role: supporting
priority: high
status: draft
name: CDDW Learning Artifacts
path_name: CDDW/LEARNINGS.md
last_modified: 2026-01-28
---

# Learning Artifacts

## Purpose

This document defines the **required format and constraints** for learning artifacts in the Context-Driven Development Workflow (CDDW).

Learning artifacts exist to:

- externalize learning produced during development
- make that learning inspectable
- enable deliberate consolidation into authoritative context

Learning artifacts are **inputs to consolidation**, not authoritative records themselves.

If learning is not captured in this format, it is considered **lost**.

---

## What a Learning Artifact Is

A **learning artifact** is a short, structured record of **new or corrected understanding** that emerged during development and may affect shared context.

A learning artifact answers the question:

> *What did we learn that might change how this system should be understood, designed, or evolved?*

Learning artifacts are:

- provisional
- incomplete
- allowed to be uncertain

They are **not** expected to be correct.
They are expected to be **honest and explicit**.

---

## What a Learning Artifact Is Not

A learning artifact is **not**:

- a summary of work performed
- a design document
- a code review
- a retrospective narrative
- a justification of decisions
- an implementation note

If the content primarily explains *what was done* rather than *what was learned*, it does not belong here.

---

## When a Learning Artifact Is Required

A learning artifact is required when development results in:

- invalidated assumptions
- newly discovered constraints
- refined or corrected domain concepts
- surprising behavior or edge cases
- tension between specification and implementation
- uncertainty about the correctness of existing context

If no such learning occurs, no artifact is required.

If learning occurs and is not captured, the workflow is incomplete.

---

## Required Structure

Every learning artifact **must** follow the structure below.

Sections may be brief, but **must not be omitted**.

---

### 1. Context

Identify the **scope** in which the learning occurred.

Include:

- the task, feature, or change
- relevant context documents (by name)

Example:

- DOMAIN.md
- SPEC/payment-processing.md
- ARCHITECTURE.md

Do **not** restate their contents.

---

### 2. Observation

Describe **what was observed** during development.

This section should be:

- concrete
- factual
- free of interpretation

Examples:

- “The external API enforces eventual consistency despite synchronous endpoints.”
- “The specification assumes X, but implementation requires Y.”

Avoid speculation here.

---

### 3. Learning

State the **new or corrected understanding** that emerged.

This is the core of the artifact.

Examples:

- “We assumed X was stateless; in practice it maintains hidden session state.”
- “The term ‘order’ is used inconsistently to mean both request and fulfillment.”

Learning may be tentative.
Uncertainty is allowed.

---

### 4. Implications

Explain **what might need to change** if this learning is valid.

Possible targets:

- domain terminology
- specifications
- constraints
- architectural decisions
- plans or sequencing

Do **not** propose specific edits.
Focus on *impact*, not solution.

---

### 5. Confidence

Indicate how confident you are in this learning.

Suggested values:

- low
- medium
- high

This helps consolidation calibrate rigor.

---

### 6. Open Questions (Optional)

List unresolved questions, if any.

This section is optional.
Do not force questions where none exist.

---

## Style and Constraints

Learning artifacts should be:

- concise (preferably one page or less)
- written in plain language
- free of rhetorical framing
- explicit about uncertainty

Avoid:

- persuasive language
- defensive justification
- speculative future design

Learning artifacts are **raw material for judgment**, not conclusions.

---

## Authority and Lifecycle

Learning artifacts:

- are **not authoritative**
- do **not** update context directly
- must be reviewed during consolidation
- may be integrated, rejected, deferred, or reframed

After consolidation:

- artifacts may be archived or removed
- their contents live on only through updated context

Learning artifacts are **ephemeral by design**.

---

## Common Failure Modes

Typical issues with learning artifacts include:

- **Over-documentation**
  Turning learning artifacts into mini-design docs.

- **Under-specification**
  Vague statements that cannot be evaluated.

- **Hidden conclusions**
  Smuggling decisions into the learning section.

- **Missing implications**
  Recording insight without surfacing its impact on shared context.

If consolidation struggles, inspect the learning artifacts first.

---

## Minimal Example (Illustrative)

```md
## Context
- SPEC/payment-processing.md
- DOMAIN.md

## Observation
The payment provider retries requests silently on timeout.

## Learning
Our assumption that payment requests are idempotent is incorrect.
Retries can trigger duplicate charges.

## Implications
- Specification may need to clarify idempotency guarantees.
- Architecture may need explicit deduplication.

## Confidence
High
```

---

## Status of This Document

This document defines the **format contract** for learning artifacts in CDDW.

It is expected to evolve as:

- consolidation practices mature
- teams calibrate signal-to-noise
- real-world usage exposes edge cases

Changes should favor clarity and evaluability over expressiveness.

Learning artifacts exist to be processed — not admired.
