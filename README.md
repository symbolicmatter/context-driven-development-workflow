---
subject: CDDW
description: Overview and positioning of the Context-Driven Development Workflow
role: core
priority: high
status: active
name: CDDW README
path_name: CDDW/README.md
last_modified: 2026-01-27
---
# Context-Driven Development Workflow (CDDW)

Context-Driven Development Workflow (CDDW) is a **practical, operational workflow** for structuring software development as a continuous learning process in AI-assisted engineering environments.

CDDW is designed for a world in which a significant portion of implementation work is performed by AI agents, with humans providing direction, review, and meaning-making.

Where traditional workflows assume that learning happens primarily in the heads of developers, CDDW treats **learning as a first-class artifact** that must be explicitly captured and curated to preserve coherence over time.

---

## Relationship to Context-Driven Engineering (CDE)

CDDW is **not** a replacement for Context-Driven Engineering (CDE), nor is it a mandatory interpretation of it.

* **CDE** provides a *conceptual framework* for thinking about context, coherence, and meaning in software systems.
* **CDDW** provides *one possible operationalization* of those ideas in an AI-heavy engineering environment.

CDE is intentionally worldview-agnostic and non-prescriptive.
CDDW is deliberately concrete and opinionated about **how development is conducted**, not about what software should be built.

You can adopt CDE without CDDW.
You can experiment with CDDW without fully subscribing to CDE.

---

## The Core Problem CDDW Addresses

As AI agents take on more implementation work, software teams face a growing risk:

> **Software development inevitably produces learning, but standard workflows treat that learning as incidental and disposable.**

Without explicit mechanisms to capture and consolidate that learning:

* Context documents drift out of sync with reality
* Decisions lose their rationale
* Concepts fragment and silently diverge
* Future agents (and humans) operate on outdated assumptions

CDDW addresses this by treating **learning as an explicit output of development**, enforced through a capture and consolidation loop embedded directly in the workflow.

---

## Core Principles

CDDW is built on a small set of non-negotiable principles:

* **Development produces knowledge** — not just code
* **Learning must be externalized** to be durable
* **AI agents may discover insights, but are not the final authority**
* **Humans remain responsible for meaning, coherence, and consolidation**
* **Context evolves continuously and must be curated deliberately**

These principles are enforced through workflow design rather than intent or discipline alone.

---

## What CDDW Is — and Is Not

**CDDW is:**

* A lightweight but disciplined workflow
* Explicitly designed for AI-assisted development
* Focused on preserving organizational and conceptual coherence
* Compatible with iterative and experimental development

**CDDW is not:**

* A specification-first methodology
* A documentation-heavy process
* A replacement for architectural judgment
* A claim that context can be fully known upfront

---

## High-Level Workflow Overview

At a high level, CDDW introduces four recurring phases within the development lifecycle:

1. **Task Definition** — a bounded unit of work is defined
2. **Implementation** — typically performed by AI agents
3. **Learning Capture** — insights produced during development are recorded in structured learning artifacts
4. **Context Consolidation** — humans integrate validated learning into context documents

These phases repeat continuously, ensuring that learning remains visible, reviewable, and actionable.

Detailed responsibilities and rules are defined in the accompanying documents.

---

## Repository Structure

This repository defines CDDW through a small set of focused documents:

* `AGENTS.md` — rules and responsibilities for AI agents
* `WORKFLOW.md` — the operational flow of CDDW
* `LEARNINGS.md` — the required format for learning artifacts
* `CONSOLIDATION.md` — how learning is reviewed and integrated
* `CONTRIBUTING.md` — contribution rules and enforcement mechanisms

Each document has a single, well-defined purpose.

---

## Status and Intent

CDDW is an **experimental workflow**.

It is intended to:

* Be tested in real projects
* Surface frictions and failure modes
* Evolve through practice rather than theory

If parts of this workflow prove ineffective, they should be revised or discarded.

The goal is not methodological purity, but sustained coherence in AI-assisted software development.

---

## Stewardship

This work is published and maintained by **Symbolic Matter**.

Symbolic Matter is a research-driven studio exploring the intersection of
software design, meaning, and emerging AI-assisted development practices.
