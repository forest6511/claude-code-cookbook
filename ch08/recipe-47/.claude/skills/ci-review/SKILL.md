---
name: ci-review
description: Code review optimized for CI/CD. Structured JSON output.
context: fork
agent: Explore
disable-model-invocation: true
allowed-tools: Bash(git diff *), Bash(git log *), Read, Grep, Glob
---

# CI/CD Code Review

## Changed Files
!`git diff origin/main...HEAD --name-only 2>/dev/null || echo "No diff"`

## Task

Review the changed files. Return results as structured data with an issues array and summary. Each issue needs severity, file, line, description, and suggestion fields. If no issues found, return an empty array with a clean summary.
