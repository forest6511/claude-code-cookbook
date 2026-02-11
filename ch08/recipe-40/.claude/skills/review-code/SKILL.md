---
name: review-code
description: Run a code review on files or a PR. Use for PR reviews, file changes, or quality checks.
argument-hint: [file-or-directory]
context: fork
agent: Explore
allowed-tools: Bash(git diff *), Bash(git log *), Bash(gh pr *)
---

# Code Review

## Target
$ARGUMENTS

## PR Context (if available)
!`gh pr diff --name-only 2>/dev/null || echo "No PR"`

## Review Criteria

Check each area in order:

### 1. Correctness
- Logic errors, off-by-one, boundary conditions
- Unhandled null/undefined
- Race conditions in async code

### 2. Security
- SQL injection, XSS, command injection
- Hardcoded secrets (API keys, passwords)
- Missing access control checks

### 3. Performance
- N+1 queries, unnecessary loops
- Memory leaks
- Unnecessary re-renders (frontend)

### 4. Readability
- Naming clarity (variables, functions, classes)
- Single responsibility per function
- Magic numbers and unexplained literals

### 5. Testing
- Test coverage for changed code
- Edge case tests
- Test readability

## Output Format

| Severity | File:Line | Area | Issue | Fix |
|----------|-----------|------|-------|-----|
| HIGH/MED/LOW | path:line | Area | Description | Code fix |

End with a one-paragraph summary of the overall quality.
