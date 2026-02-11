---
name: issue-triage
description: Triage a GitHub Issue --
  classify and set priority labels
disable-model-invocation: true
allowed-tools: mcp__github__get_issue,
  mcp__github__update_issue,
  mcp__github__add_issue_comment
---

# Issue Triage

## Target Issue
$ARGUMENTS

## Steps
1. Use GitHub:get_issue to read the Issue
2. Classify: bug, feature, docs, or chore
3. Set priority: P0 (production down),
   P1 (broken feature), P2 (improvement),
   P3 (nice-to-have)
4. Use GitHub:update_issue to apply labels
5. Use GitHub:add_issue_comment with results
