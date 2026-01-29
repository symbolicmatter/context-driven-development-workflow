---
subject: CDDW
description: Contribution guidelines for the Context-Driven Development Workflow repository
role: supporting
priority: medium
status: draft
name: CDDW Contributing Guidelines
path_name: CDDW/CONTRIBUTING.md
last_modified: 2026-01-28
---

# Contributing to the Context-Driven Development Workflow (CDDW)

Thank you for your interest in contributing.

This repository is **not a generic workflow template or starter kit**.
It is a **reference implementation of an opinionated development workflow**,
designed to explore how learning during AI-assisted development can be made explicit,
reviewable, and integrable into shared context.

Contributions are welcome — but they are expected to respect the **conceptual integrity** of the workflow.

By contributing, you agree that your contributions are licensed under CC
BY-NC-SA 4.0.

---

## What This Repository Is

This repository exists to:

- Define the Context-Driven Development Workflow (CDDW) clearly
- Make its assumptions, invariants, and trade-offs explicit
- Provide a coherent operational model aligned with Context-Driven Engineering (CDE)
- Serve as a reference for humans and AI agents experimenting with AI-heavy development

This repository is **not** intended to:

- Become a general-purpose development framework
- Accumulate tooling-specific instructions
- Offer plug-and-play templates for every context
- Optimize for ease of adoption over conceptual rigor

CDDW is deliberately demanding.
Reducing that demand without understanding its purpose is not an improvement.

---

## Types of Contributions Welcome

We welcome contributions that:

- Improve precision, clarity, or internal consistency
- Expose hidden assumptions or failure modes
- Strengthen the alignment between documents
- Clarify boundaries between CDDW and CDE
- Refine definitions based on real-world application

We are especially interested in contributions that:

- Report friction encountered when applying CDDW
- Surface cases where the workflow breaks down
- Identify unnecessary complexity or missing constraints

---

## Types of Contributions We Will Push Back On

Expect pushback on contributions that:

- Dilute CDDW into a set of optional “best practices”
- Introduce vague or fashionable terminology
- Reframe the workflow primarily in tooling terms
- Add steps without clear responsibility or purpose
- Optimize for speed or convenience at the expense of coherence

CDDW is not neutral.
It makes explicit trade-offs.
Contributions that remove those trade-offs without replacing them
are likely to be rejected.

---

## Normativity and Scope

CDDW is **intentionally opinionated**.

When contributing, assume that:

- The workflow invariants are non-negotiable
- Learning capture and consolidation are not optional
- Human responsibility for consolidation must remain explicit
- AI agents must not become de facto authorities

If you believe an invariant is wrong,
challenge it explicitly rather than weakening it implicitly.

---

## Relationship to CDE

CDDW is an operational complement to Context-Driven Engineering (CDE),
not a redefinition of it.

Contributions should **not**:

- Turn CDDW into a conceptual framework
- Duplicate or restate CDE documents
- Introduce worldview assumptions into CDDW itself

Changes that affect the conceptual boundary between CDDW and CDE
require explicit discussion.

---

## How to Contribute

1. Open an issue describing:
   - What you want to change
   - What problem it addresses
   - Which document(s) are affected

2. Keep pull requests small and focused.
   Large conceptual changes should start as discussion.

3. Reference existing documents explicitly.
   Avoid introducing parallel definitions.

4. Explain trade-offs.
   If a change simplifies something, state what is lost.

---

## AI-Assisted Contributions

AI-assisted contributions are allowed.

However:

- You remain responsible for intent and correctness
- Generated text must be reviewed and understood
- Contributions that read as generic AI output will be rejected

AI is a collaborator, not an author.

---

## Tone and Conduct

Be precise.
Be respectful.
Assume intelligence and good intent.

Strong opinions are welcome.
Hand-waving is not.

---

## Final Note

If you find yourself thinking:

> “This would be easier if we made it more flexible…”

Pause.

The rigidity is often where the value lies.
