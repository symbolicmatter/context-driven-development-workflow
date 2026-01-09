# Context-Driven Learning Workflow (CDLW)

Context-Driven Learning Workflow (CDLW) is a **practical, operational workflow** for capturing, externalizing, and consolidating learning that emerges during AI-assisted software implementation.

CDLW is designed for a world in which a significant portion of implementation work is performed by AI agents, with humans providing direction, review, and meaning-making.

Where traditional workflows assume that learning happens primarily in the heads of developers, CDLW treats **learning as a first-class artifact** that must be explicitly captured and curated to preserve coherence over time.

---

## Relationship to Context-Driven Engineering (CDE)

CDLW is **not** a replacement for Context-Driven Engineering (CDE), nor is it a mandatory interpretation of it.

* **CDE** provides a *conceptual framework* for thinking about context, coherence, and meaning in software systems.
* **CDLW** provides *one possible operationalization* of those ideas in an AI-heavy engineering environment.

CDE is intentionally worldview-agnostic and non-prescriptive.
CDLW is deliberately concrete and opinionated.

You can adopt CDE without CDLW.
You can experiment with CDLW without fully subscribing to CDE.

---

## The Core Problem CDLW Addresses

As AI agents take on more implementation work, software teams face a growing risk:

> **Learning happens during implementation, but disappears immediately afterward.**

Without explicit mechanisms to capture and consolidate that learning:

* Context documents drift out of sync with reality
* Decisions lose their rationale
* Concepts fragment and silently diverge
* Future agents (and humans) operate on outdated assumptions

CDLW addresses this by inserting a **learning capture and consolidation loop** directly into the implementation workflow.

---

## Core Principles

CDLW is built on a small set of non-negotiable principles:

* **Implementation produces knowledge** — not just code
* **Learning must be externalized** to be durable
* **AI agents may discover insights, but are not the final authority**
* **Humans remain responsible for meaning, coherence, and consolidation**
* **Context evolves continuously and must be curated deliberately**

These principles are enforced through workflow design rather than intent or discipline alone.

---

## What CDLW Is — and Is Not

**CDLW is:**

* A lightweight but disciplined workflow
* Explicitly designed for AI-assisted development
* Focused on preserving organizational and conceptual coherence
* Compatible with iterative and experimental development

**CDLW is not:**

* A specification-first methodology
* A documentation-heavy process
* A replacement for architectural judgment
* A claim that context can be fully known upfront

---

## High-Level Workflow Overview

At a high level, CDLW introduces four recurring phases:

1. **Task Definition** — a bounded unit of work is defined
2. **Implementation** — typically performed by AI agents
3. **Learning Capture** — new insights are recorded in structured learning artifacts
4. **Context Consolidation** — humans integrate validated learning into context documents

These phases repeat continuously, ensuring that learning remains visible, reviewable, and actionable.

Detailed responsibilities and rules are defined in the accompanying documents.

---

## Repository Structure

This repository defines CDLW through a small set of focused documents:

* `AGENTS.md` — rules and responsibilities for AI agents
* `WORKFLOW.md` — the operational flow of CDLW
* `LEARNINGS.md` — the required format for learning artifacts
* `CONSOLIDATION.md` — how learning is reviewed and integrated
* `CONTRIBUTING.md` — contribution rules and enforcement mechanisms

Each document has a single, well-defined purpose.

---

## Status and Intent

CDLW is an **experimental workflow**.

It is intended to:

* Be tested in real projects
* Surface frictions and failure modes
* Evolve through practice rather than theory

If parts of this workflow prove ineffective, they should be revised or discarded.

The goal is not methodological purity, but sustained coherence in AI-assisted software development.
