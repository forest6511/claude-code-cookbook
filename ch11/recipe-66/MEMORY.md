# Code Reviewer Memory

## Project Conventions
- API responses: {data, error, meta} format
- Auth: JWT + httpOnly cookies
- Error handling: unified middleware

## Recurring Issues
- src/api/handlers/: try-catch gaps
- src/hooks/: useEffect dependency arrays
- src/models/: validation scattered across
  controller layer

## Resolved
- 2026-02: SQL injection -> parameterized
- 2026-02: XSS -> DOMPurify added
