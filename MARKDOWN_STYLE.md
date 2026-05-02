# Markdown Style Guide

## Purpose

This document defines the mandatory Markdown formatting rules for all project artifacts.

Its purpose is to:

- Ensure structural consistency
- Minimize diff noise
- Improve readability
- Align with automated linting

This guide governs formatting only.  
It does not define document structure or content responsibilities.

## Heading Style

- Use ATX-style headings only (`#`, `##`, `###`).
- Do not use Setext-style headings (`===` or `---` underlines).
- Leave exactly one blank line after each heading.

Example:

```md
## Milestones

Content here.
```

## Bullet Lists

- Use dash (`-`) for unordered lists.
- Do not mix `*` or `+`.
- Indent nested lists with two spaces.

## Line Length

- Prefer soft wrapping around 100 characters.
- Do not introduce hard wraps mid-sentence solely to satisfy narrow editors.

## Horizontal Rules

- Avoid horizontal rules (`---`) unless semantically meaningful.
- Do not use them to simulate section breaks between headings.

## Links

- Prefer relative links for intra-repository references.
- Use descriptive link text when clarity benefits.

## Code Blocks

- Use fenced code blocks with language hints where applicable.
- Do not use indented code blocks.

## Character Usage

- Use UTF-8 encoding (without BOM).
- Prefer standard keyboard characters for punctuation and symbols.
- Avoid typographic variants and decorative Unicode symbols.

Allowed:

- Letters with diacritics (e.g., é, ë, ü, ñ)
- Non-English words where appropriate
- Plain ASCII punctuation (`-`, `"`, `'`, `...`, `->`)

Avoid:

- En dash (–) or em dash (—) → use `-`
- Curly quotes (“ ” ‘ ’) → use `'` or `"`
- Unicode arrows (→, ←) → use `->` or `<-`
- Ellipsis (…) → use `...`
- Emoji

Rationale:

- Maintain clean diffs and predictable rendering
- Avoid invisible character inconsistencies
- Ensure compatibility across editors and tooling
- Allow natural language where required

When in doubt, prefer the simplest standard keyboard character.
