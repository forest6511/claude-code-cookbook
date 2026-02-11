---
name: git-commit
description: Generate a Conventional Commits message from staged changes
disable-model-invocation: true
allowed-tools: Bash(git diff *), Bash(git log *), Bash(git status *), Bash(git add *), Bash(git commit *)
---

# Commit Message Generator

## Staged Changes
!`git diff --staged --stat 2>/dev/null || echo "No staged changes"`

## Recent History
!`git log --oneline -5 2>/dev/null || echo "No history"`

## Format

    <type>(<scope>): <subject>

    <body>

### Types
feat, fix, docs, refactor, test, chore, perf, ci

### Rules
- Subject line under 50 characters
- Body explains "why", not "what"
- Add BREAKING CHANGE for breaking changes

## Steps
1. Analyze staged changes
2. Choose appropriate type and scope
3. Propose a commit message
4. Commit after user confirmation
