---
name: commit-message
description: Generate a commit message from staged changes. Use before running git commit.
argument-hint: [--amend]
disable-model-invocation: true
allowed-tools: Bash(git diff *), Bash(git log *), Bash(git status)
---

# Commit Message Generator

Generate a Conventional Commits message from the staged changes.

## Steps

1. Run `git diff --staged` to see staged changes
2. Run `git log --oneline -5` for recent history
3. Analyze the changes and generate a message

## Message Format

    <type>(<scope>): <subject>

    <body>

### Type Selection
- feat: new feature
- fix: bug fix
- docs: documentation only
- refactor: code restructuring
- test: adding or updating tests
- chore: build config or tooling

### Rules
- Subject line under 50 characters
- Body explains the "why", not the "what"
- If $ARGUMENTS contains --amend, amend the previous commit instead of creating a new one
