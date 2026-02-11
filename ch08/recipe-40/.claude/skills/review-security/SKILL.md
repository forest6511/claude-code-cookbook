---
name: review-security
description: Security-focused code review
context: fork
agent: Explore
---

Review for security concerns only:

Target: $ARGUMENTS

## Checklist
1. OWASP Top 10 vulnerabilities
2. Authentication and authorization gaps
3. Sensitive data handling (logging, errors)
4. Known vulnerabilities in dependencies
5. Input validation
