---
name: dependency-audit
description: Audit project dependencies
context: fork
agent: Explore
---

## package.json
!`cat package.json 2>/dev/null || echo "{}"`

## Versions
!`npm ls --depth=0 2>/dev/null \
  || pip list --format=json 2>/dev/null \
  || echo "No dependency info"`

## Security Audit
!`npm audit --json 2>/dev/null | head -50 \
  || echo "Audit tool not installed"`

Analyze the above and report:
1. Outdated dependencies (2+ major versions behind)
2. Dependencies with known vulnerabilities
3. Update priorities and recommended actions
