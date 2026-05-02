# CDDW Starter (Roo Code Reference Implementation)

This directory contains the **opinionated, versioned starter scaffold** for the Context-Driven Development Workflow (CDDW).

It is intended to bootstrap a new project with:

- The canonical CDDW discipline artifacts (snapshot at this repository version)
- A preconfigured Roo Code environment
- A structured Human/AI collaboration model
- Explicit learning and consolidation mechanics

This starter is designed for serious software projects where architectural integrity, contextual continuity, and long-term maintainability matter.

## What This Is

This starter provides a deployable project skeleton that:

- Embeds CDDW as an operational discipline
- Integrates Roo Code as the AI execution environment
- Makes context a first-class artifact from day one
- Supports enterprise-grade development practices

It is **versioned together with the CDDW repository**.  
When you scaffold a project from tag `vX.Y.Z`, you get the exact CDDW snapshot for that version.

## What This Is Not

- It is not a generic AI coding template.
- It is not tool-agnostic.
- It is not a minimal experiment setup.
- It is not intended for throwaway prototypes.

This is a deliberate, structured workflow for hybrid Human/AI development in real projects.

## Why Roo Code?

This starter uses Roo Code as the reference execution environment because:

- It is highly configurable.
- It supports multiple custom modes.
- Modes can be orchestrated.
- It is model-agnostic.
- It allows explicit behavioral shaping of AI agents.

CDDW is **tool-agnostic at the definition level**, but this starter is intentionally opinionated to reduce onboarding friction and ensure predictable behavior.

If Roo Code evolves or is replaced in the future, this layer can be refactored without changing the core CDDW discipline.

## What Gets Scaffolded

Running the starter initialization script will create a new project root containing:

- `CDE_INDEX.md`
- `AGENTS.md`
- `WORKFLOW.md`
- `LEARNINGS.md`
- `CONSOLIDATION.md`
- `.roo/` configuration (custom modes + orchestration)
- Supporting directory structure for disciplined development

All Markdown files are copied as a **snapshot** from this repository version.

After scaffolding, the new project owns its context.
It does not depend on the upstream CDDW repository for runtime behavior.

## Intended Audience

This starter assumes:

- You are a professional developer or architect.
- You are comfortable working with Git.
- You are willing to treat documentation as executable context.
- You understand that AI agents require explicit structure to behave predictably.

This starter does not abstract away responsibility.
It makes responsibility visible.

## Development Philosophy

CDDW is built on the premise that:

> Code generation is not the bottleneck.  
> Context coherence is.

This starter operationalizes that premise by:

- Structuring intent explicitly.
- Making agent roles explicit.
- Enforcing learning consolidation.
- Preventing context drift between sessions.

The goal is not faster code.  
The goal is better systems.

## Versioning Model

This starter is tied to repository tags.

Example:

- `v1.3.2` → stable baseline used in production.
- `v1.4.0` → improved consolidation mechanics.
- `v2.0.0` → structural changes to agent roles.

Projects scaffolded from a tag remain stable unless intentionally upgraded.

Upgrade tooling may be introduced in the future.
For now, upgrades are manual and deliberate.

## Usage (Conceptual)

1. Checkout a specific version of this repository.
2. Run the starter initialization script.
3. Initialize your Git repository.
4. Begin disciplined development using CDDW.

Detailed instructions are provided below.

## Responsibility Model

Using this starter means committing to:

- Treating written context as authoritative.
- Consolidating learning explicitly.
- Reviewing AI output architecturally.
- Not outsourcing judgment to the tool.

The AI assists.  
The human remains accountable.

## Relationship to the Canonical CDDW Definition

The core definition of CDDW lives in the repository root:

- `/docs/CDDW.md`
- `/AGENT_ROLES.md`
- `/WORKFLOW.md`
- `/CONSOLIDATION.md`

The starter contains snapshot copies appropriate to its version.

Conceptual changes to CDDW happen at the root level.
Operational integration happens here.

## Roadmap

Future evolutions may include:

- Upgrade scripts between versions
- Alternative execution environment integrations
- Reduced starter variant (lightweight mode)
- Project health diagnostics tooling

For now, this is the reference implementation.

## Final Note

This starter is intentionally structured and opinionated.

It reflects the belief that:

- Serious systems require serious context.
- AI agents require disciplined boundaries.
- Architecture must remain visible.

If that resonates with how you build software, you’re in the right place.
