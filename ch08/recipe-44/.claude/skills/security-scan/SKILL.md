---
name: security-scan
description: Run a security scan with Semgrep and manual analysis, then suggest fixes
argument-hint: [file-or-directory]
context: fork
disable-model-invocation: true
allowed-tools: Bash(semgrep scan *), Read, Grep, Glob
---

# Security Scan

## Target
$ARGUMENTS

## Step 1: Static Analysis

Run Semgrep and analyze the results:

    semgrep scan --config auto --json $ARGUMENTS

If Semgrep isn't installed, fall back to manual-only.

## Step 2: Manual Analysis (Supplement Semgrep)

Check what static analysis can't catch:

### Business Logic Vulnerabilities
- Missing authorization checks (IDOR)
- Race conditions
- Stack trace exposure in error responses

### Sensitive Data
- Hardcoded credentials
- Secrets logged to console
- Internal info in error messages

### Dependencies
- Known vulnerabilities in package.json / requirements.txt

## Step 3: Consolidated Report

| # | Severity | CWE | File:Line | Issue | Source | Fix |
|---|----------|-----|-----------|-------|--------|-----|
| 1 | CRITICAL/HIGH/MED/LOW | CWE-XXX | path:line | Desc | Semgrep/Manual | Fix |

## Step 4: Fix Suggestions

For CRITICAL and HIGH findings, show:

    Before: (vulnerable code)
    After:  (fixed code)
    Why:    (explanation)
