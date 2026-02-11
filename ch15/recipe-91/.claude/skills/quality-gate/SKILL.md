---
name: quality-gate
description: "Run lint, type check, tests, and
  security scan. Fix issues and report results."
disable-model-invocation: true
---
# Quality Gate

Run the following checks in order. Fix any
failures before proceeding to the next step.

## Step 1: Static Analysis
- Run the project linter (ESLint, Ruff, etc.)
- Run type checking (tsc --noEmit, mypy, etc.)

## Step 2: Tests
- Run the test suite
- Verify coverage hasn't decreased

## Step 3: Security
- Run dependency audit (npm audit / pip audit)
- Check for hardcoded secrets

## Step 4: Report
Summarize results: PASS/FAIL per check, fixes
applied, and remaining warnings.
