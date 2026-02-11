---
name: refactor
description: Analyze and refactor code. Use for code improvement and technical debt reduction.
argument-hint: [file-or-function]
disable-model-invocation: true
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(npm test *), Bash(npx jest *), Bash(npx vitest *), Bash(pytest *), Bash(go test *)
---

# Refactoring

## Target
$ARGUMENTS

## Step 1: Analysis

Read the target code and check for:

### Code Smells
- **Long functions**: 30+ lines
- **Deep nesting**: 3+ levels
- **Duplicate code**: Repeated logic patterns
- **Large classes/modules**: Multiple responsibilities
- **Long parameter lists**: 4+ parameters
- **Magic numbers/strings**: Unexplained literals

### Output

| Code Smell | File:Line | Severity | Technique |
|-----------|-----------|----------|-----------|
| ... | ... | HIGH/MED/LOW | Extract Method / ... |

## Step 2: Plan

1. Run existing tests (confirm they pass)
2. Prioritize changes by severity
3. Write concrete steps for each change
4. Identify affected files

## Step 3: Execute

Apply changes one at a time:
- Run tests after each change
- If tests fail, revert the last change
- Maintain a passing test suite at all times

## Step 4: Report

| Change | File | Technique | Tests |
|--------|------|-----------|-------|
| ... | ... | Extract Method | PASS |
