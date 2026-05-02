# Influences and External Signals

This document records external discussions, articles, and experiments
that influenced refinements in CDE/CDDW.

These are not authoritative dependencies.
They are catalysts for internal clarification.

---

## 2026-01 — Spec-Driven Development Critique (Kent Beck)

**External Signal**
Kent Beck (LinkedIn, Jan 2026) criticized “Spec-Driven Development” approaches that assume the full specification can be written before implementation, arguing that meaningful learning occurs during implementation and inevitably changes the spec.

**Key Themes**

- Learning emerges during implementation
- Upfront specification is epistemically incomplete
- Treating specs as final encodes a false certainty

**Internal Response**
Triggered explicit separation between CDE (conceptual, non-prescriptive) and CDDW (operational workflow). Strengthened the rule that implementation must externalize learning via mandatory Learning Artifacts. Introduced strict failure conditions around silent assumption resolution and prohibited direct context updates by agents.

**Type of Influence**

- Refinement
- Structural change
- Positioning clarification

## 2026-01 — Agent Workflow Notes (Andrej Karpathy)

**External Signal**
Andrej Karpathy (X, Jan 2026) reflected on large-scale agent-assisted coding. Observed silent assumptions, abstraction bloat, lack of uncertainty management, scope creep, and overproduction despite major productivity gains.

**Key Themes**

- Agents make unexamined assumptions and don’t seek clarification
- Overengineering and abstraction bloat as default failure modes
- Declarative success criteria outperform imperative prompting

**Internal Response**
Strengthened `AGENTS.md` with explicit Epistemic Discipline and Uncertainty Declaration rules; added Scope Containment constraints; formalized simplification and anti-overengineering requirements. Reinforced spec-as-success-criteria framing in CDDW positioning.

**Type of Influence**

- Validation
- Refinement
- Positioning clarification
