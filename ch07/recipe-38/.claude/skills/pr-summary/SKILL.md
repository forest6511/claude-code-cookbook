---
name: pr-summary
description: Summarize PR changes
context: fork
agent: Explore
allowed-tools: Bash(gh *)
---

## PR Context
- Diff: !`gh pr diff`
- Comments: !`gh pr view --comments`
- Changed files: !`gh pr diff --name-only`

## Task
From the PR context, generate:

1. Change summary (3 lines max)
2. Change category (feature/fix/refactor/etc.)
3. Review focus areas
4. Test coverage concerns
