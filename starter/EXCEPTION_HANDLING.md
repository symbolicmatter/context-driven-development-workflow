# Baseline Exception Handling Guideline

## 1. Treat exceptions as part of architecture, not just syntax

Exception handling must make three things clear:

- what kind of failure occurred
- where it should be handled
- what information must be preserved for diagnosis

Do not let language syntax dictate the architecture.

# 2. Separate failures into three categories

### A. Programming errors

Caused by incorrect code, broken assumptions, invalid internal state, or misuse of APIs.

Guidelines:

- Fail fast
- Do not attempt local recovery
- Usually represented by unchecked/runtime exceptions

### B. Domain or business rule violations

Caused by valid system or user actions that violate domain rules or invariants.

Guidelines:

- Use explicit domain exception types
- Treat them as part of the application contract
- Handle them where meaningful application decisions can be made

### C. External or technical failures

Caused by dependencies such as:

- databases
- networks
- file systems
- SDKs or frameworks
- third-party services

Guidelines:

- Catch them at the dependency boundary where **context is richest**
- Log them once with sufficient diagnostic context
- Translate them into a higher-level exception appropriate for the caller

# 3. Catch at the right boundary

Catch exceptions only when one of the following applies:

- meaningful context can be added
- the error must be translated to a higher abstraction
- real recovery is possible
- the error must be converted to a platform-specific response

Do not catch exceptions merely because the language allows it.

# 4. Log once, with full diagnostic value

A logged exception must contain enough information to investigate the issue without guesswork.

Include:

- **reference identifier**
- relevant business context
- relevant technical context
- full exception details
- stack trace

Avoid duplicate logging across layers.

### Reference Identifiers

Every logged exception should include a **globally unique reference identifier** that can be used to correlate:

- logs
- monitoring alerts
- support tickets
- user-visible error messages

Prefer **structured, typed identifiers** instead of random IDs.

Example:

```
error_01h8z3k2j1n7v8m9c0p4s5t6u7
```

Benefits:

- human-readable type prefix (`error`, `event`, `request`, etc.)
- globally unique
- time-sortable
- easy to reference in logs and support workflows

Technologies such as **TypeID, UUIDv7-based identifiers, ULIDs, or similar schemes** are suitable. The specific implementation is platform-dependent.

# 5. Error Correlation and Identifier Roles

Modern systems use several identifiers for observability. These identifiers serve **different purposes** and should not be confused.

## Error Reference ID

Identifies a **single failure instance**.

Purpose:

- correlate logs related to a specific error
- allow support teams to locate diagnostics
- safely expose a reference identifier to users

Characteristics:

- globally unique
- safe to expose externally
- stable for the lifetime of the error

Example:

```
error_01h8z3k2j1n7v8m9c0p4s5t6u7
```

User-facing message:

```
Unable to retrieve invoice data (Ref: error_01h8z3k2j1n7v8m9c0p4s5t6u7)
```

## Request ID

Identifies a **single request or execution context**.

Examples:

- HTTP request
- background job
- CLI execution
- event handler invocation

Purpose:

- correlate all logs produced during the execution
- trace the flow of a single user action

Example:

```
req_01h8z2pfb9h1k6g8w2j4v3s5t7
```

## Trace ID

Identifies a **distributed execution path across services**.

Used in distributed tracing systems such as:

- OpenTelemetry
- Jaeger
- Zipkin
- AWS X-Ray

Purpose:

- reconstruct cross-service execution
- diagnose latency and cascading failures

Characteristics:

- generated at the system entry point
- propagated between services
- shared across all spans in the trace

## Span ID

A **Span ID** identifies a single operation within a trace.

Each span represents an individual unit of work, such as:

- a database query
- an API call
- a service method
- a queue publish/consume step

Spans form a hierarchy that describes the full execution path of a request.

Typical relationship:

```
Trace
 ├─ Span: API request
 │   ├─ Span: database query
 │   └─ Span: external API call
```

Span IDs are primarily used by tracing systems and are usually not surfaced to users.

## Identifier Relationship

These identifiers operate at different scopes.

| Identifier         | Scope                 | Typical lifetime        |
| ------------------ | --------------------- | ----------------------- |
| Error Reference ID | Single failure        | One exception           |
| Request ID         | One request or job    | Entire execution        |
| Trace ID           | Distributed execution | Cross-service operation |
| Span ID            | Individual operation  | Single processing step  |

A single log entry may contain multiple identifiers.

Example:

```
{
  "error_id": "error_01h8z3k2j1n7v8m9c0p4s5t6u7",
  "request_id": "req_01h8z2pfb9h1k6g8w2j4v3s5t7",
  "trace_id": "4f9c3c92c01b4f34",
  "span_id": "00f067aa0ba902b7",
  "message": "Failed to retrieve invoice data",
  "exception": "...",
  "context": {...}
}
```

### Practical guideline

At minimum:

- every logged exception includes an **Error Reference ID**
- every request includes a **Request ID**
- identifiers propagate through logs and monitoring systems
- user-visible errors expose the **Error Reference ID**

This separation improves debugging, observability, and incident response.

# 6. Translate exceptions across boundaries

When moving between layers, translate exceptions to match the abstraction of the receiving layer.

Examples:

- infrastructure → application
- domain → API / HTTP / UI
- backend → frontend
- framework internals → business responses

Translated exceptions should describe **the failed intent**, not internal implementation details.

Good:

```
Unable to retrieve invoice data (Ref: error_01h8z3k2j1n7v8m9c0p4s5t6u7)
```

Bad:

```
SQL timeout while querying invoices table
```

# 7. Decide explicitly whether to preserve the original cause

There is no universal rule.

Preserve the original cause when:

- stack chaining improves diagnostics
- the runtime supports this cleanly
- exposing internal details is acceptable

Break the chain when:

- the error has already been logged
- upstream layers should remain decoupled from implementation details
- security or encapsulation is important

The key requirement is **consistency across the system**.

# 8. Platform boundaries must translate to native outcomes

At system boundaries, exceptions must be converted into the platform’s native error model.

Examples:

- HTTP responses
- UI messages
- framework error objects
- job retry signals
- command-line exit codes
- domain events

User-visible messages should include the **Error Reference ID** so failures can be correlated with logs.

Example:

```
An unexpected error occurred. Please contact support and provide reference ID: error_01h8z3k2j1n7v8m9c0p4s5t6u7
```

Never leak low-level technical exceptions across system boundaries unless that is an explicit design decision.

# 9. Avoid these anti-patterns

- swallowing exceptions
- logging the same failure multiple times
- catching overly broad exceptions too early
- using exceptions for normal control flow
- exposing low-level technical details to callers or users
- inventing artificial checked/unchecked semantics without architectural value

# 10. The governing question

For every exception rule, ask:

**Who can act meaningfully on this failure, and what information do they need?**

The answer determines:

- exception type
- catch location
- logging location
- translation strategy
- caller contract
