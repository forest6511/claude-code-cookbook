---
name: release-notes
description: Generate release notes
disable-model-invocation: true
argument-hint: [version]
---

# Release Notes: v$0

## Changes Since Last Release
!`git log $(git describe --tags --abbrev=0 2>/dev/null || echo "HEAD~20")..HEAD --oneline`

## Instructions
Generate release notes for v$0 with sections:

### New Features
- Summarize feature commits

### Bug Fixes
- Summarize fix commits

### Other Changes
- Refactoring, documentation updates, etc.
