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

### Backlog

A **Backlog** is a lightweight coordination artifact that tracks candidate, selected, blocked, and completed work items.

Its purpose is to:

- make near-term work visible
- provide a controlled funnel from planning to specification
- support coordination when multiple contributors or agents work in parallel

A backlog is:

- operational and mutable
- subordinate to authoritative context
- intentionally lightweight

A backlog is **not**:

- a design document
- a substitute for planning
- a specification
- an authority on domain or architectural meaning

Backlog items may originate from plans, discovered needs, defects, or operational pressures.  
When a backlog item becomes non-trivial or behaviorally significant, it should be externalized into a dedicated specification before implementation proceeds.

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

## Context Coherence and Integrity

Long-lived AI-assisted projects risk gradual drift between declared context (DOMAIN, ARCHITECTURE, SPEC, LEARNINGS) and the evolving codebase.

CDDW addresses this risk through a principle of **Context Coherence**.

Context Coherence refers to the degree to which:

- Implementation reflects declared domain concepts  
- Architecture matches structural reality  
- Decisions remain traceable  
- Learning is consolidated into authoritative documents  
- Context remains trustworthy over time

Coherence is not assumed. It must be periodically assessed.

### The CDE Integrity Auditor

CDDW introduces an optional but strongly recommended review mechanism: the **CDE Integrity Auditor**.

The Auditor evaluates the alignment between context and implementation and produces a structured Coherence Report.

This mechanism:

- Does not modify code or documents  
- Does not block builds  
- Does not enforce thresholds  
- Encourages discipline through visibility

The goal is not bureaucratic compliance, but sustained clarity.

### Coherence Dimensions

The Auditor evaluates coherence across three dimensions:

1. **Traceability**  

   - Are code artifacts linked to domain and specification concepts?  
   - Are implemented features traceable to declared intent?

2. **Context Freshness**  

   - Do recent structural changes appear in ARCHITECTURE?  
   - Are LEARNINGS consolidated?  
   - Is context lagging behind implementation?

3. **Alignment & Drift**  

   - Do new abstractions exist in code but not in DOMAIN?  
   - Does the actual structure diverge from declared architecture?  
   - Are repeated patterns undocumented?

Each dimension is rated on a **1–5 Coherence Level scale**.

An optional overall Coherence Level may be derived for overview purposes.

### Design Principle

CDDW treats coherence as a living property of a system.

The responsibility for maintaining coherence remains human. The Auditor provides structured visibility.

## The CDDW Lifecycle

CDDW structures development as a repeating cycle with four phases:

1. **Task Definition**
2. **Implementation**
3. **Learning Capture**
4. **Context Consolidation**

In projects with non-trivial or parallel work, task definition is typically preceded by:

- **Planning** — defines sequencing, milestones, and commitment intent
- **Backlog Coordination** — maintains the current queue of candidate, selected, blocked, and in-flight work

This preserves a clear flow:

PRODUCT / context → PLAN → BACKLOG → SPEC / task definition → implementation → learning capture → consolidation

This is not a linear process with a fixed end state.  
It is a **continuous loop** that operates throughout the lifetime of a system.

### 1. Task Definition

A *task* is a bounded unit of work that is expected to produce:

- code changes
- and potentially learning

Tasks may originate from:

- prioritized backlog items
- specifications
- bug reports
- exploratory spikes

In disciplined use of CDDW, non-trivial work should normally flow through the backlog before it becomes an implementation task.

A task is considered incomplete until:

- implementation is finished **and**
- learning has been externalized (if any occurred)

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

### 3. Learning Capture

After (or during) implementation, learning is captured in one or more learning artifacts.

This phase is **mandatory when learning occurs**.

Learning capture:

- does not decide truth
- does not update context directly
- does not require certainty

Its sole purpose is to prevent learning from disappearing.

### 4. Context Consolidation

Captured learning is reviewed and processed by humans.

Possible outcomes include:

- updating existing context documents
- refining specifications
- adjusting architectural constraints
- explicitly rejecting or deferring the learning

Only after consolidation does learning affect authoritative context.

## Roles and Responsibilities

CDDW distinguishes between **capabilities**, not job titles.

### Implementation Role

Responsible for:

- carrying out the task
- noticing when assumptions break
- producing learning artifacts when relevant

This role may be fulfilled by AI agents.

### Consolidation Role

Responsible for:

- reviewing learning artifacts
- deciding what becomes authoritative
- maintaining coherence across context documents

This role **must be fulfilled by humans**.

### Review Responsibility

At defined points (for example before merging or release):

- learning artifacts are checked for completeness
- required consolidation is verified

Unconsolidated learning at commitment points is a stop condition.

## Parallel Work and Coordination

CDDW permits parallel work, but does not treat unconstrained parallelism as free.

When multiple contributors or agents work simultaneously:

- active work should be visible in the backlog
- parallel streams should be separated into explicit lanes where helpful (for example frontend, backend, integration, or cross-cutting)
- each non-trivial active work item should be traceable to a specification
- work that affects shared domain or architectural meaning must not proceed on silent assumptions

Parallel execution increases the risk of drift, conflicting interpretations, and unconsolidated learning.  
The backlog exists to make that coordination load visible without turning planning, specification, and implementation into the same document.

## Invariants of the Workflow

The following rules are non-negotiable in CDDW:

- Development work is not complete until learning is externalized
- Learning artifacts are not authoritative by default
- AI agents may propose learning but may not consolidate it
- Humans are accountable for context coherence
- Context documents must reflect the best current understanding, not historical
discovery

If these invariants are violated, CDDW is not being practiced.

## What CDDW Does Not Prescribe

CDDW deliberately does **not** prescribe:

- specific tools or platforms
- specific AI agent implementations
- branching strategies
- CI/CD setup
- project management methodology

CDDW defines **responsibilities and flows**, not tooling.

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

## When CDDW Is a Poor Fit

CDDW may be unsuitable when:

- software is intentionally short-lived
- coordination cost is negligible
- learning has no long-term value
- there is no willingness to maintain shared context

CDDW trades speed for coherence.  
That trade-off must be intentional.

## Operational Embodiments

CDDW is tool-agnostic by design.

This repository includes a reference implementation under `/starter/`
that integrates CDDW with a specific execution environment (currently Roo Code).

Other execution environments may be developed in the future.

## Status of This Document

This document defines the **intended behavior** of CDDW.

It is expected to evolve as:

- the workflow is tested
- failure modes are observed
- assumptions are challenged

Revisions should preserve conceptual integrity over convenience.

CDDW is a discipline, not a recipe.
