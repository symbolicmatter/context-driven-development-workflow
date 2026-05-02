# SPEC: Kilo Permission Restrictions

Created: 2026-05-02
Status: Draft

## Purpose

Define expected permission restrictions for Kilo Code usage in the CDDW repository and CDDW starter projects.

## Problem

CDDW relies on document authority, role boundaries, and scoped agent behavior.

Current Kilo agent instructions express those boundaries in natural language, but runtime permissions may still allow broader edits than a role should perform.

If permissions are too broad:

- role constraints depend entirely on prompt obedience
- agents may edit files outside their responsibility
- tool-specific configuration may undermine conceptual boundaries

If permissions are too narrow:

- legitimate steward or implementation tasks may become impractical
- users may bypass custom agents entirely

## Scope

This SPEC covers Kilo Code permission policy for:

- the CDDW repository itself
- the `starter/.kilo/` reference implementation
- project-level permission defaults
- custom-agent permission narrowing

## Required Investigation

Before implementation, verify which Kilo Code permission formats are supported in Markdown agent frontmatter and project configuration.

The investigation must confirm whether Kilo supports:

- per-tool permissions in agent frontmatter
- glob-pattern edit permissions
- project-level default permissions in `kilo.jsonc`
- more restrictive agent-level overrides
- deny, ask, and allow actions

## Desired Permission Model

The project should define permissions at two levels:

1. Project-level defaults that protect sensitive or authority-bearing files.
2. Agent-level permissions that narrow behavior by role.

## CDDW Repository Permission Expectations

For the CDDW repository itself:

- CDDW steward mode may edit core documents, starter documents, and specs when requested.
- Root `.kilo/` configuration should be editable only for Kilo customization tasks.
- Generated dependency directories must not be editable.
- Review notes and seed context should not be treated as authoritative context.
- Bash should default to ask except for low-risk inspection commands if supported.

## Starter Permission Expectations

For starter project agents:

- Discovery agents may edit context documents but must not edit production code.
- Architect agents may edit or draft architecture proposals and context documents, but must not edit production code.
- Implementer agents may edit source code, specs, tests, and learning artifacts within task scope, but must not edit authoritative context documents directly.
- Integrity Auditor agents must not edit code, context documents, specs, learning artifacts, backlog state, or configuration.

## Required Behavior

If supported by Kilo, permissions must encode role boundaries directly rather than relying only on prose instructions.

If Kilo does not support the desired granularity, the project must document the limitation and keep the strongest available restrictions.

## Acceptance Criteria

- The supported Kilo permission syntax is verified against current Kilo behavior or documentation.
- Project-level permission defaults are proposed for the CDDW repository.
- Agent-level permission restrictions are proposed for `starter/.kilo/agents/`.
- The Integrity Auditor is prevented from editing files at runtime if Kilo supports that restriction.
- Any unsupported desired restriction is explicitly documented as a limitation.
- Permissions do not silently contradict the role definitions in `AGENT_ROLES.md`.

## Non-Goals

- Do not configure user-global Kilo settings.
- Do not add MCP server permissions unless needed by a later task.
- Do not solve Claude Code permissions.
- Do not rely on permissions as a replacement for context and role instructions.

## Open Questions

- Should the CDDW repository use a project-level deny-by-default edit policy?
- Can Kilo distinguish editing authoritative context from editing learning artifacts by glob pattern reliably enough?
- Should generated starter projects inherit stricter permissions than this repository uses for its own development?
