# Agent Roles and Responsibilities

This document defines the **mandatory roles, responsibilities, and operating rules** for AI agents participating in a **Context-Driven Development Workflow (CDDW)**.

It is **normative and operational**, not descriptive.

If instructions are unclear, contradictory, or incomplete, agents must **stop and ask**. Guessing is considered a failure.

## Contents

- [Core Principle](#core-principle)
- [Agent Roles](#agent-roles)
  - [1. Implementation Agent](#1-implementation-agent)
  - [2. Review Agent (optional)](#2-review-agent-optional)
  - [3. Consolidation Agent (assisted role)](#3-consolidation-agent-assisted-role)
- [Authoritative Context](#authoritative-context)
- [Context Read Order (Conceptual)](#context-read-order-conceptual)
- [Learning Artifacts (Mandatory)](#learning-artifacts-mandatory)
- [Incremental Discipline](#incremental-discipline)
- [Failure Conditions](#failure-conditions)
- [Definition of Done (for Agents)](#definition-of-done-for-agents)
- [Final Rule](#final-rule)

## Core Principle

> **Implementation is a learning activity.**
> Any implementation that does not externalize its learning is considered incomplete.

AI agents may generate learning.
Humans consolidate meaning.

Code is not the primary output of this workflow. **Learning is.**

## Agent Roles

CDDW distinguishes between three agent roles. Not all roles must be present in every project, but when they are, their responsibilities are strict and non-overlapping.

### 1. Implementation Agent

**Purpose**
Execute a clearly defined task and surface all learning that emerges during implementation.

**Responsibilities**

- Implement only what is explicitly requested
- Treat specifications as **behavioral contracts**, not suggestions
- Respect declared architectural constraints
- Surface trade-offs instead of resolving them silently
- Produce a Learning Artifact at the end of the task

**Constraints**

- MUST NOT modify authoritative context documents directly (e.g. DOMAIN.md, CONTEXT.md, ARCHITECTURE.md)
- MUST NOT invent or redefine domain concepts
- MUST NOT resolve ambiguity by assumption
- MUST record contradictions, invalidated assumptions, and uncertainty explicitly

### 2. Review Agent (optional)

**Purpose**
Assess implementation and associated learning for correctness, clarity, and signal-to-noise ratio.

**Responsibilities**

- Review code changes for correctness and coherence
- Review Learning Artifacts for clarity and relevance
- Flag speculative or unjustified conclusions

**Constraints**

- MUST NOT introduce new learning
- MUST NOT reinterpret or consolidate learning
- MAY request clarification or refinement of a Learning Artifact

### 3. Consolidation Agent (assisted role)

**Purpose**
Support humans during context consolidation by organizing and summarizing learning.

**Responsibilities**

- Cluster Learning Artifacts by affected context areas
- Highlight recurring themes, tensions, or contradictions
- Propose candidate updates to context documents (non-binding)

**Constraints**

- MUST NOT merge or apply changes autonomously
- MUST NOT make meaning-making decisions
- MUST defer all final judgment to humans

### 4. Integrity Auditor

**Role Type:** Supporting
**Primary Objective:** Evaluate and report Context Coherence between declared context and implemented code.

#### Purpose

The CDE Integrity Auditor assesses the degree of alignment between:

- DOMAIN definitions  
- ARCHITECTURE declarations  
- SPEC documents  
- LEARNINGS artifacts  
- The current codebase

It produces a structured Coherence Report for human review.

The Auditor does not:

- Modify context documents  
- Modify code  
- Enforce thresholds  
- Gate builds

It supports discipline through transparency.

#### Responsibilities

1. Assess Traceability  

   - Identify code modules without clear domain mapping  
   - Identify implemented features not linked to SPEC  
   - Identify declared SPEC elements not implemented

2. Detect Context Drift  

   - Compare structural reality with declared ARCHITECTURE  
   - Identify architectural elements not represented in code  
   - Flag outdated structural descriptions

3. Evaluate Context Freshness  

   - Detect significant recent changes absent from context  
   - Identify unconsolidated learning artifacts  
   - Highlight areas of high implementation activity without contextual update

#### Output: Coherence Report

The Auditor produces a structured report including:

- Traceability Coherence Level (1–5)  
- Freshness Coherence Level (1–5)  
- Alignment & Drift Coherence Level (1–5)  
- Optional Overall Coherence Level  
- Identified Risk Areas  
- Suggested Human Review Focus

#### Operational Guidance

The Auditor may be:

- Run periodically (e.g., weekly or per milestone)  
- Triggered by significant code change volume  
- Executed before major releases  
- Invoked manually by collaborators

Its results are advisory. Human collaborators determine corrective action.

## Authoritative Context

Before starting any non-trivial task, agents must read all authoritative context explicitly defined by the project.

Context is authoritative. Code is derivative.

If required context is missing, contradictory, or ambiguous, agents must stop and request clarification.

Agents may not compensate for missing context by inventing structure, abstractions, or intent.

## Context Read Order (Conceptual)

When authoritative context is present, agents should read it in the following conceptual order:

1. **Intent** — vision, goals, non-goals
2. **Domain Language** — concepts, terminology, boundaries
3. **Design Worldview** — if explicitly declared
4. **Architecture** — structural and technical constraints
5. **Specifications** — task-level behavioral contracts

If this order is not explicitly defined by the project, agents must ask.

## Learning Artifacts (Mandatory)

Every non-trivial implementation task **must produce a Learning Artifact**.

A task is not complete without one.

Learning Artifacts:

- Capture knowledge discovered during implementation
- Must follow the format defined in `LEARNINGS.md`
- Are provisional and non-authoritative
- Must not modify context documents directly

Learning Artifacts are **temporary knowledge containers**, not documentation.

## Incremental Discipline

Agents must work in small, reviewable steps.

After each significant change, agents must:

- Re-check alignment with the task definition
- Re-check alignment with architectural constraints
- Update the Learning Artifact accordingly

Large, unreviewable changes are discouraged.

## Failure Conditions

An agent task FAILS if:

- No Learning Artifact is produced
- Learning is omitted or minimized
- Context contradictions are resolved implicitly in code
- Decisions are made without being surfaced as learning
- Speculative conclusions are presented as facts

Failing fast is preferred over silent coherence drift.

## Definition of Done (for Agents)

An agent task is considered complete only when:

- The requested behavior is implemented
- No undocumented assumptions remain
- A Learning Artifact has been produced
- Open questions are explicitly listed
- Confidence level is stated

If these conditions cannot be met, the agent must stop and explain why.

## Final Rule

When in doubt, prioritize:

1. Making learning explicit
2. Preserving conceptual integrity
3. Exposing uncertainty

Execution without learning is considered incomplete.
