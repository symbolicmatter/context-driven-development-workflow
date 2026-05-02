# Testing Strategy

## Purpose

This document defines the **normative testing strategy** for the project.

Its purpose is to ensure that:

- domain rules are explicit, verifiable, and stable over time,
- implementation changes remain safe and intentional,
- AI coding agents are structurally guided toward correct designs,
- and SPECs can be considered complete only when their behavior is demonstrably correct.

This document is **authoritative**.  
Implementations that do not comply with this strategy are considered incomplete.

## Core Principle

> **Domain behavior must be proven, not assumed.**

In this project, testing is not a quality assurance activity performed after implementation.  
Testing is the **primary mechanism** by which domain rules are made explicit and enforced.

## What “TDD” Means in This Project

Test-Driven Development in this project means:

1. Domain behavior is first expressed as executable tests.
2. Tests must fail before the corresponding behavior is implemented.
3. Implementation is complete only when all relevant tests pass.
4. Tests remain as permanent, executable documentation of domain rules.

TDD here is used to:

- enforce architectural boundaries,
- surface implicit assumptions,
- and prevent accidental coupling to infrastructure or third-party dependencies.

It is **not** used to maximize coverage or test WordPress itself.

## Scope of Testing

### Mandatory: Domain Logic

All **domain logic** must be covered by tests.

This includes, but is not limited to:

- Core business invariants
- State transition rules
- Complex domain calculations
- Access and permission decisions
- Idempotency and retry behavior

Domain logic must be:

- deterministic,
- isolated from infrastructure,
- and testable using the project's primary language and its standard testing framework.

### Limited: Infrastructure Integration

Infrastructure-specific code is treated as **infrastructure glue**, not as domain logic.

Testing expectations:

- Integration points may be tested via **lightweight contract tests**
- Tests should verify:
  - correct invocation of domain logic
  - correct persistence or retrieval of values
- Tests must not depend on:
  - UI rendering
  - Third-party framework internals
  - external services

Full end-to-end or UI testing is **explicitly out of scope** for Phase 0.

## Architectural Implication (Normative)

To enable this testing strategy, implementations **must** respect the following structural separation:

- **Pure domain code**
  - No infrastructure-specific functions
  - No global state
  - No side effects
  - Fully unit-testable

- **Infrastructure adapters**
  - Thin layers
  - Minimal logic
  - Delegate decisions to domain code

If code cannot be tested without bootstrapping the infrastructure/platform, it is considered **misplaced**.

## Test Design Rules

All tests must follow these rules:

- One domain rule or invariant per test
- Deterministic inputs and outputs
- Explicit setup; no reliance on global or ambient state
- Clear naming that describes behavior, not implementation

Tests must not:

- rely on the current date or time without explicit injection,
- depend on execution order,
- hide multiple assertions behind broad “happy path” tests.

## Definition of Done for a SPEC

A SPEC is considered **implemented** only when:

1. All normatively described behaviors are covered by tests.
2. Tests demonstrably fail before implementation.
3. All tests pass after implementation.
4. No existing tests are broken without explicit justification.

If tests are missing, incomplete, or skipped, the SPEC is **not done**.

## Relationship to Other Documents

- This strategy constrains **how** SPECs are implemented.
- It does not alter the behavioral contracts defined in SPECs.
- Architectural documents must be interpreted in a way that preserves testability.
- Chat discussions do not override this strategy unless explicitly consolidated.

## Non-Goals

This strategy explicitly does **not** aim to:

- test the underlying platform/framework itself,
- achieve high code coverage metrics,
- introduce complex mocking frameworks,
- or require CI/CD pipelines in Phase 0.

Simplicity, determinism, and clarity take precedence over completeness.

## Evolution

This document may evolve as the project matures.

However:

- weakening the requirements requires explicit discussion,
- and any relaxation must be justified against operational risk.

Testing discipline is treated as a **long-term asset**, not a temporary development aid.
