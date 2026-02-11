---
name: security-scan
description: Run a security scan
context: fork
agent: security-auditor
disable-model-invocation: true
---

Run a security scan on: $ARGUMENTS

## Checklist

1. **Injection**: SQL, command, XSS
2. **Auth/Authz**: Improper access control
3. **Data exposure**: Hardcoded secrets, logging
4. **Dependencies**: Known vulnerable packages

## Output Format

| Severity | File | Line | Issue | Fix |
|----------|------|------|-------|-----|
| ...      | ...  | ...  | ...   | ... |
