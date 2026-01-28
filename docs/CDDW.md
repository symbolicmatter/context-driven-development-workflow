---
subject: CDDW
description: Canonical definition and operational model of the Context-Driven Development Workflow
role: core
priority: high
status: draft
name: CDDW Core Definition
path_name: CDDW/docs/CDDW.md
last_modified: 2026-01-28
---

# Context-Driven Development Workflow (CDDW)

## Overview

The **Context-Driven Development Workflow (CDDW)** is a disciplined, AI-aware
workflow for software development in which **learning produced during
implementation is treated as an explicit, reviewable, and consolidatable
output of development**.

CDDW is designed for environments where:

- AI agents perform a significant portion of implementation work
- Humans retain responsibility for intent, meaning, and coherence
- Software systems are expected to evolve over time without losing conceptual integrity

CDDW does not replace design judgment or architectural thinking.  
It provides a concrete structure for **capturing, validating, and integrating
learning** that would otherwise remain implicit, local, or lost.

---

## Relationship to Context-Driven Engineering (CDE)

CDDW is **not** Context-Driven Engineering.

The relationship is intentional and asymmetric:

- **CDE** defines a *conceptual framework* for treating context as the primary
engineering artifact
- **CDDW** defines *one possible workflow* for operationalizing context
evolution during development

CDE answers the question:

> *What kinds of context exist, and how do they relate?*

CDDW answers a different question:

> *How does learning from implementation reliably flow back into context?*

You can adopt CDE without CDDW.  
You can experiment with CDDW without fully committing to CDE.  

However, **CDDW only makes sense in projects where explicit context exists and
is treated as authoritative**.

---

## Core Claim

> **Software development inevitably produces learning.  
> If that learning is not explicitly captured and consolidated, coherence degrades.**

Traditional workflows implicitly assume that:

- learning happens “in developers’ heads”
- relevant insights will be remembered
- code will “speak for itself”

CDDW rejects these assumptions.

In AI-assisted development, implementation is:

- fast
- parallel
- literal
- and often detached from human sensemaking

This makes **unexternalized learning a systemic risk**.

CDDW exists to mitigate that risk.

---

## Key Concepts

### Learning

In CDDW, *learning* refers to **new or corrected understanding** that emerges
during development, including but not limited to:

- invalidated assumptions
- newly discovered constraints
- refined domain concepts
- unexpected interactions or edge cases
- architectural tensions
- mismatches between specification and reality

Learning is **not**:

- a personal reflection
- a retrospective narrative
- raw implementation detail

Learning is only relevant if it has **implications for shared context**.

---

### Learning Artifact

A **Learning Artifact** is a structured, written record of learning produced
during development.

Its purpose is to:

- make learning inspectable
- allow review and validation
- enable deliberate consolidation into context documents

Learning artifacts are:

- required outputs of development work
- intermediate, not authoritative
- inputs to human judgment

They are defined formally in `LEARNINGS.md`.

---

### Consolidation

**Consolidation** is the act of integrating validated learning into
authoritative context documents (such as DOMAIN.md, CONTEXT.md, ARCHITECTURE.md,
SPEC.md).

Consolidation:

- is performed by humans
- is selective and judgment-based
- may result in updates, rejections, or deferrals

Learning does **not** become authoritative automatically.

The consolidation process is defined in `CONSOLIDATION.md`.

---

## The CDDW Lifecycle

CDDW structures development as a repeating cycle with four phases:

1. **Task Definition**
2. **Implementation**
3. **Learning Capture**
4. **Context Consolidation**

This is not a linear process with a fixed end state.  
It is a **continuous loop** that operates throughout the lifetime of a system.

---

### 1. Task Definition

A *task* is a bounded unit of work that is expected to produce:

- code changes
- and potentially learning

Tasks may originate from:

- plans
- specifications
- bug reports
- exploratory spikes

A task is considered incomplete until:

- implementation is finished **and**
- learning has been externalized (if any occurred)

---

### 2. Implementation

Implementation is typically performed by:

- AI agents
- humans
- or a combination of both

During implementation:

- assumptions are tested against reality
- constraints surface
- specifications are interpreted

Implementation is treated as a **knowledge-producing activity**, not just execution.

---

### 3. Learning Capture

After (or during) implementation, learning is captured in one or more learning artifacts.

This phase is **mandatory when learning occurs**.

Learning capture:

- does not decide truth
- does not update context directly
- does not require certainty

Its sole purpose is to prevent learning from disappearing.

---

### 4. Context Consolidation

Captured learning is reviewed and processed by humans.

Possible outcomes include:

- updating existing context documents
- refining specifications
- adjusting architectural constraints
- explicitly rejecting or deferring the learning

Only after consolidation does learning affect authoritative context.

---

## Roles and Responsibilities

CDDW distinguishes between **capabilities**, not job titles.

### Implementation Role

Responsible for:

- carrying out the task
- noticing when assumptions break
- producing learning artifacts when relevant

This role may be fulfilled by AI agents.

---

### Consolidation Role

Responsible for:

- reviewing learning artifacts
- deciding what becomes authoritative
- maintaining coherence across context documents

This role **must be fulfilled by humans**.

---

### Review Responsibility

At defined points (for example before merging or release):

- learning artifacts are checked for completeness
- required consolidation is verified

Unconsolidated learning at commitment points is a stop condition.

---

## Invariants of the Workflow

The following rules are non-negotiable in CDDW:

- Development work is not complete until learning is externalized
- Learning artifacts are not authoritative by default
- AI agents may propose learning but may not consolidate it
- Humans are accountable for context coherence
- Context documents must reflect the best current understanding, not historical
discovery

If these invariants are violated, CDDW is not being practiced.

---

## What CDDW Does Not Prescribe

CDDW deliberately does **not** prescribe:

- specific tools or platforms
- specific AI agent implementations
- branching strategies
- CI/CD setup
- project management methodology

CDDW defines **responsibilities and flows**, not tooling.

---

## Failure Modes

Common failure modes when adopting CDDW include:

- **Ceremonial learning capture**  
  Learning artifacts exist but are not reviewed.

- **Over-capture**  
  Everything is recorded, nothing is consolidated.

- **Agent authority creep**  
  AI-generated insights are accepted without human judgment.

- **Deferred consolidation**  
  Learning piles up until it becomes unmanageable.

CDDW does not prevent these failures automatically.  
It makes them visible and addressable.

---

## When CDDW Is a Poor Fit

CDDW may be unsuitable when:

- software is intentionally short-lived
- coordination cost is negligible
- learning has no long-term value
- there is no willingness to maintain shared context

CDDW trades speed for coherence.  
That trade-off must be intentional.

---

## Status of This Document

This document defines the **intended behavior** of CDDW.

It is expected to evolve as:

- the workflow is tested
- failure modes are observed
- assumptions are challenged

Revisions should preserve conceptual integrity over convenience.

CDDW is a discipline, not a recipe.
