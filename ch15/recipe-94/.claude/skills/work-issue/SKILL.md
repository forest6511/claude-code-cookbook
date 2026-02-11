---
name: work-issue
description: "Read a GitHub Issue, create a
  branch, implement, and open a PR."
argument-hint: "<issue number>"
disable-model-invocation: true
---
# Issue-Driven Development

Work on Issue #$ARGUMENTS:

## Step 1: Read the Issue
- Get Issue #$ARGUMENTS details via gh CLI
- Note title, body, labels, assignee

## Step 2: Create Branch
- Name: feature/issue-$ARGUMENTS-{summary}
  or fix/issue-$ARGUMENTS-{summary}
- Check out the new branch

## Step 3: Implement
- Code the solution
- Commit with "refs #$ARGUMENTS" in message

## Step 4: Quality Check
- Run lint, type check, tests
- Fix any failures

## Step 5: Create PR
- Push and open a PR
- Include "Closes #$ARGUMENTS" in body
- Summarize changes and test results
