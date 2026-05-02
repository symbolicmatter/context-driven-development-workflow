# CDDW Repository Task List

This list tracks follow-up work identified during the project setup, context file, and Kilo Code customization review.

## Open

- [ ] Implement a starter initialization script that copies required CDDW root documents into a new project scaffold.
- [ ] Define task-aware context inclusion so optional context documents are loaded when relevant without making every document mandatory.
- [ ] Investigate and define Kilo Code permission restrictions at project and custom-agent level.
- [ ] Decide whether root `CDDW_INDEX.md` is the durable authority index or whether another index format is needed.
- [ ] Make Kilo rule loading explicit in project configuration if required for portable loading.
- [ ] Strengthen `starter/.kilocodeignore` with real ignore entries.
- [ ] Clarify how generic starter context documents such as `EXCEPTION_HANDLING.md` and `TESTING_STRATEGY.md` are discovered and loaded.
- [ ] Clarify Claude Code support as best-effort and Kilo Code support as official.
- [ ] Review whether `.kilo/agents/cddw-steward.md` permissions can be narrowed without breaking steward tasks.
- [ ] Align Markdown linting with `MARKDOWN_STYLE.md` where practical.
- [ ] Remove local `.DS_Store` files from the working tree.
- [ ] Decide whether `tree2md.sh` is a maintained repository utility or local helper.

## Completed

- [x] Add or restore `starter/TESTING_STRATEGY.md`.
- [x] Add root context index draft as `CDDW_INDEX.md`.
- [x] Update `CONTEXT_SEED.md` and `Review Integrity Auditor changes 2.md` to remove stale context-index assumptions.
- [x] Refactor legacy learning artifacts to the current `LEARNINGS.md` format.
