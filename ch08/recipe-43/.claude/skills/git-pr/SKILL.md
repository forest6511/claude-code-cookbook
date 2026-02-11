---
name: git-pr
description: Create a Pull Request from the current branch with an auto-generated description
disable-model-invocation: true
allowed-tools: Bash(git *), Bash(gh pr *)
---

# Pull Request Creation

## Branch
!`git branch --show-current`

## Changes from main
!`git log main..HEAD --oneline 2>/dev/null || echo "No diff"`

## Changed Files
!`git diff main --stat 2>/dev/null || echo "No diff"`

## PR Template

    ## Summary
    (Purpose of changes in 1-3 sentences)

    ## Changes
    - (List major changes)

    ## Testing
    - [ ] Unit tests
    - [ ] Integration tests
    - [ ] Manual verification

## Rules
- PR title under 70 characters
- Link related Issues with `Closes #XX`
- Create with `gh pr create`
