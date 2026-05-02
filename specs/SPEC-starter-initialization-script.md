# SPEC: Starter Initialization Script

Created: 2026-05-02
Status: Draft

## Purpose

Define the behavior for a script that initializes a new project from the `starter/` reference implementation.

The script exists because `starter/CDE_INDEX.md` refers to CDDW documents that are not stored directly in `starter/`. Those documents are intended to be copied from the CDDW repository root into the initialized project.

## Problem

The starter currently describes an initialization script, but no script exists.

As a result:

- the starter cannot be used as documented
- `starter/CDE_INDEX.md` appears broken before initialization
- required CDDW documents are not materialized in the target project
- setup behavior depends on manual copying

## Scope

The script must initialize a new CDDW-aligned project directory from the current repository checkout.

It must copy:

- the full contents of `starter/`
- required CDDW root documents referenced by `starter/CDE_INDEX.md`
- Kilo Code configuration under `starter/.kilo/`
- supporting directories such as `specs/` and `learnings/`

## Required Inputs

The script must accept a target project directory.

The script may accept optional flags for:

- dry-run mode
- overwrite behavior
- source repository root override

## Required Behavior

When executed, the script must:

1. Verify that it is running from, or can locate, a CDDW repository root.
2. Verify that the `starter/` directory exists.
3. Verify that all source documents required by `starter/CDE_INDEX.md` exist in the CDDW repository root.
4. Create the target directory if it does not exist.
5. Copy starter contents into the target directory.
6. Copy required root CDDW documents into the target directory using the paths expected by `starter/CDE_INDEX.md`.
7. Preserve nested paths such as `docs/CDDW.md`.
8. Avoid copying repository-local artifacts that are not part of the starter contract.
9. Report every file created, skipped, or overwritten.
10. Exit non-zero if required source files are missing.

## Required Source Documents

At minimum, the initialized project must contain the documents referenced by `starter/CDE_INDEX.md`:

- `docs/CDDW.md`
- `AGENT_ROLES.md`
- `WORKFLOW.md`
- `LEARNINGS.md`
- `CONSOLIDATION.md`
- `AGENTS.md`

The script must not assume that every root Markdown file belongs in the starter project.

## Exclusions

The script must not copy:

- `.git/`
- `.DS_Store`
- root `.kilo/` configuration for developing the CDDW repository itself
- `CONTEXT_SEED.md`
- review notes or unconsolidated proposal files
- local dependency directories such as `node_modules/`
- generated logs or temporary files

## Overwrite Rules

By default, the script must not overwrite existing files in the target directory.

If a target file already exists, the script must:

- report the conflict
- leave the existing file unchanged
- continue only when safe to do so

An explicit overwrite flag may allow replacement.

Overwrite mode must report every replaced file.

## Dry-Run Behavior

Dry-run mode must:

- perform all validation
- list intended create, skip, and overwrite operations
- make no file changes

## Acceptance Criteria

- Running the script against an empty target directory creates a usable CDDW starter project.
- The initialized project contains all documents listed in `starter/CDE_INDEX.md`.
- The initialized project contains `.kilo/` configuration from `starter/.kilo/`.
- The initialized project does not contain CDDW-repository-only files such as root `.kilo/`, `CONTEXT_SEED.md`, or review notes.
- Running the script twice without overwrite mode does not silently replace existing files.
- Dry-run mode reports the intended changes without modifying the target directory.
- Missing required source documents cause a clear error and non-zero exit.

## Non-Goals

- Do not implement project upgrade or migration between CDDW versions.
- Do not initialize Git in the target project unless explicitly added in a later SPEC.
- Do not install dependencies.
- Do not configure user-global Kilo Code settings.
- Do not resolve task-aware context inclusion. That is covered by a separate SPEC.

## Open Questions

- Should the script live at `scripts/init-starter.sh`, `scripts/init-starter.ts`, or another path?
- Should the script support copying from a remote tagged release, or only from a local checkout?
- Should initialized projects record the CDDW source version or Git commit?
