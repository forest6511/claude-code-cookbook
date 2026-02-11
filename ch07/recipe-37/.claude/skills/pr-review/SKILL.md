---
name: pr-review
description: Review the current PR
disable-model-invocation: true
context: fork
agent: Explore
allowed-tools: Bash(gh *)
---

## PR Diff
!`gh pr diff`

## Changed Files
!`gh pr diff --name-only`

## Review Instructions
Review the PR for:
1. Logic correctness
2. Edge case handling
3. Test coverage
4. Security concerns
