---
name: visual-test
description: Take a page snapshot and verify
  UI changes
disable-model-invocation: true
context: fork
allowed-tools: mcp__playwright__browser_navigate,
  mcp__playwright__browser_snapshot,
  mcp__playwright__browser_take_screenshot,
  Read, Grep
---

# Visual Test

## Target URL
$ARGUMENTS

## Steps
1. Navigate with playwright:browser_navigate
2. Take snapshot with playwright:browser_snapshot
3. Screenshot with playwright:browser_take_screenshot
4. Check for layout issues, text overflow,
   and broken interactive elements
5. Report findings
