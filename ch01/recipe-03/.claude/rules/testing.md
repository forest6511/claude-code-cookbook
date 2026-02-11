---
paths:
  - "tests/**/*.test.ts"
  - "**/*.spec.ts"
---

# Testing Rules

- Prefer integration tests with real dependencies
  over heavily mocked unit tests
- One assertion per test as a general rule
- Name tests descriptively: "returns 401 when
  user is unauthenticated"
