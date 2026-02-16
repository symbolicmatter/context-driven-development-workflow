# Context-Driven Development Workflow (CDDW)

![Experimental Workflow](https://img.shields.io/badge/Status-Experimental%20Workflow-blue?style=for-the-badge) [![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-orange?style=for-the-badge)](./LICENSE)

Context-Driven Development Workflow (CDDW) is a **practical, operational workflow** for structuring software development as a continuous learning process in AI-assisted engineering environments.

CDDW is designed for a world in which a significant portion of implementation work is performed by AI agents, with humans providing direction, review, and meaning-making.

Where traditional workflows assume that learning happens primarily in the heads of developers, CDDW treats **learning as a first-class artifact** that must be explicitly captured and curated to preserve coherence over time.

## Contents

- [Relationship to Context-Driven Engineering (CDE)](#relationship-to-context-driven-engineering-cde)
- [The Core Problem CDDW Addresses](#the-core-problem-cddw-addresses)
- [Core Principles](#core-principles)
- [What CDDW Is — and Is Not](#what-cddw-is--and-is-not)
- [High-Level Workflow Overview](#high-level-workflow-overview)
- [Repository Structure](#repository-structure)
- [Status and Intent](#status-and-intent)
- [Current State of the Workflow](#current-state-of-the-workflow)
- [Ongoing and Future Work](#ongoing-and-future-work)
- [License](#license)
- [Stewardship](#stewardship)

## Relationship to Context-Driven Engineering (CDE)

For the conceptual foundation behind CDDW, see **Context-Driven Engineering (CDE)**:  
<https://github.com/symbolicmatter/context-driven-engineering>

CDDW is **not** a replacement for Context-Driven Engineering (CDE), nor is it a mandatory interpretation of it. It is a concrete workflow that builds on CDE’s conceptual model.

- **CDE** provides a *conceptual framework* for thinking about context, coherence, and meaning in software systems.
- **CDDW** provides *one possible operationalization* of those ideas in an AI-heavy engineering environment.

CDE is intentionally worldview-agnostic and non-prescriptive.
CDDW is deliberately concrete and opinionated about **how development is conducted**, not about what software should be built.

You can adopt CDE without CDDW.
You can experiment with CDDW without fully subscribing to CDE.

## The Core Problem CDDW Addresses

As AI agents take on more implementation work, software teams face a growing risk:

> **Software development inevitably produces learning, but standard workflows treat that learning as incidental and disposable.**

Without explicit mechanisms to capture and consolidate that learning:

- Context documents drift out of sync with reality
- Decisions lose their rationale
- Concepts fragment and silently diverge
- Future agents (and humans) operate on outdated assumptions

CDDW addresses this by treating **learning as an explicit output of development**, enforced through a capture and consolidation loop embedded directly in the workflow.

## Core Principles

CDDW is built on a small set of non-negotiable principles:

- **Development produces knowledge** — not just code
- **Learning must be externalized** to be durable
- **AI agents may discover insights, but are not the final authority**
- **Humans remain responsible for meaning, coherence, and consolidation**
- **Context evolves continuously and must be curated deliberately**

These principles are enforced through workflow design rather than intent or discipline alone.

## What CDDW Is — and Is Not

**CDDW is:**

- A lightweight but disciplined workflow
- Explicitly designed for AI-assisted development
- Focused on preserving organizational and conceptual coherence
- Compatible with iterative and experimental development

**CDDW is not:**

- A specification-first methodology
- A documentation-heavy process
- A replacement for architectural judgment
- A claim that context can be fully known upfront

## High-Level Workflow Overview

At a high level, CDDW introduces four recurring phases within the development lifecycle:

1. **Task Definition** — a bounded unit of work is defined
2. **Implementation** — typically performed by AI agents
3. **Learning Capture** — insights produced during development are recorded in structured learning artifacts
4. **Context Consolidation** — humans integrate validated learning into context documents

These phases repeat continuously, ensuring that learning remains visible, reviewable, and actionable.

Detailed responsibilities and rules are defined in the accompanying documents.

## Repository Structure

This repository defines CDDW through a small set of focused documents:

- `AGENTS.md` — rules and responsibilities for AI agents
- `WORKFLOW.md` — the operational flow of CDDW
- `LEARNINGS.md` — the required format for learning artifacts
- `CONSOLIDATION.md` — how learning is reviewed and integrated
- `CONTRIBUTING.md` — contribution rules and enforcement mechanisms

Each document has a single, well-defined purpose.

## Reference Implementation: CDDW Starter (Roo Code)

This repository contains a versioned starter kit under `/starter/`.

The starter provides:

- A scaffolded project structure
- Snapshot copies of canonical CDDW documents
- A preconfigured Roo Code environment
- Custom agent modes aligned with `AGENT_ROLES.md`

The starter is intentionally opinionated and uses Roo Code as the reference execution environment.

CDDW itself remains tool-agnostic at the definition level.
The starter is an operational embodiment of the discipline.

To bootstrap a new project, use the starter at a specific repository tag.

## Status and Intent

CDDW is an **experimental workflow**.

It is intended to:

- Be tested in real projects
- Surface frictions and failure modes
- Evolve through practice rather than theory

If parts of this workflow prove ineffective, they should be revised or discarded.

The goal is not methodological purity, but sustained coherence in AI-assisted software development.

CDDW prioritizes durability of understanding over completeness of tooling.

## Current State of the Workflow

CDDW is **conceptually complete but operationally evolving**.

The core ideas, document responsibilities, and learning–consolidation loop described in this repository are already being exercised in real projects. They are not hypothetical, and they are not placeholders.

At the same time, parts of the workflow are still being actively refined through use:

- The *rules and responsibilities* between humans and AI agents are stable in intent, but still being tuned in practice.
- The *shape and granularity* of learning artifacts is being stress-tested across different kinds of work.
- The *points of friction* in consolidation and review are treated as signals, not failures.

This repository intentionally captures the **stable conceptual spine** of the workflow first. Operational refinements are integrated only after they have proven to improve coherence rather than add ceremony.

Readers should treat CDDW as usable today, but not frozen.

## Ongoing and Future Work

Several areas of CDDW are under active development and will be integrated incrementally as they stabilize:

- **Agent operationalization**  
  CDDW is being operationalized through explicitly defined AI agent roles and modes (for example in editor-integrated agent environments). These implementations are deliberately kept out of the core workflow until they demonstrate consistent benefits across projects.

- **Worked examples**  
  Real project examples applying CDDW end-to-end are being developed. They are intentionally withheld until they reflect the workflow accurately, rather than prematurely canonizing early experiments.

- **Failure modes and refinements**  
  Known failure modes—such as over-capture of low-value learning or delayed consolidation—are being documented and addressed as first-class inputs to the workflow’s evolution.

This repository reflects the *current best understanding* of how to preserve conceptual coherence in AI-assisted development. It is expected to evolve through use, not through speculation.

## License

This work is licensed under the  
**Creative Commons Attribution–NonCommercial–ShareAlike 4.0 International License (CC BY-NC-SA 4.0)**.

You are free to:

- **Share** — copy and redistribute the material in any medium or format  
- **Adapt** — remix, transform, and build upon the material  

Under the following terms:

- **Attribution** — You must give appropriate credit and indicate if changes were made  
- **NonCommercial** — You may not use the material for commercial purposes  
- **ShareAlike** — If you remix, transform, or build upon the material, you must distribute your contributions under the same license  

This license applies to **all conceptual content, documentation, and written material** in this repository unless explicitly stated otherwise.

For the full legal text, see the [`LICENSE`](./LICENSE) file.

## Stewardship

This work is published and maintained by **Symbolic Matter**.

Symbolic Matter is a research-driven studio exploring the intersection of
software design, meaning, and emerging AI-assisted development practices.
