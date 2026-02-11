---
name: release-notes
description: Generate release notes from commits since the last tag
argument-hint: [version]
disable-model-invocation: true
allowed-tools: Bash(git *)
---

# Release Notes: v$ARGUMENTS

## Changes Since Last Release
!`git log $(git describe --tags --abbrev=0 2>/dev/null || echo "HEAD~30")..HEAD --oneline`

## Format
### New Features
- Summarize feat commits

### Bug Fixes
- Summarize fix commits

### Other Changes
- Refactoring, docs, CI, etc.

## Rules
- Categorize by commit type
- Write from a user's perspective (skip internals)
- Keep each item to one line
