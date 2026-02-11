---
name: review-code
model: claude-haiku-4-5-20251001
---

## Steps (follow strictly)

1. Read the target files
2. Check **each item** in the list **in order**
3. Record results in the table
4. Output the table

## Checklist
- SQL injection vulnerabilities?
- XSS vulnerabilities?
- Hardcoded credentials?
- N+1 query issues?
- Unhandled null/undefined?

## Output (use this exact format)

| Check | Result | File:Line | Detail |
|-------|--------|-----------|--------|
| SQL injection | OK/FAIL | ... | ... |
