# Code Reviewer Memory

## Project Conventions
- Auth: JWT + httpOnly cookies
- API responses: {data, error, meta} format
- Tests: __tests__/ directory per module

## Recurring Issues
- src/api/: Missing error handling
- src/hooks/: useEffect dependency arrays
- src/utils/: `any` types left unresolved

## Resolved Issues
- 2026-02-01: SQL injection -> parameterized
  queries

## Detailed Notes
-> patterns.md (common pattern details)
-> architecture.md (architecture decisions)
