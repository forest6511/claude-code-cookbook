# Recipe 74: Run Background Agents

You're blocked waiting for sub-agents or teammates to finish when you could be doing other work.

## Quick Reference

### Two ways to background a task

```text
Method 1: Request it upfront
  "Run the tests in the background"

Method 2: Switch during execution
  Press Ctrl+B while a sub-agent runs
  -> Immediately moves to background
```

### Background constraints

```text
Constraints:
  - Permissions pre-approved before launch
  - Only pre-approved operations run
  - MCP tools not available
  - AskUserQuestion calls fail silently
  - Resume in foreground to retry failures

Good for background:
  + Tests, linters, static analysis
  + File search, codebase exploration
  + Documentation generation

Bad for background:
  - E2E tests needing MCP/DB connections
  - Tasks needing user decisions
  - Tasks requiring new permissions
```

### Check results and resume

```text
> Check the test results from the background
> run. Fix any failures.

> Resume the failed background task in
> foreground
```

### Agent Teams monitoring shortcuts

```text
In-process mode:
  Shift+Up/Down  Select teammate
  Enter          Expand teammate session
  Escape         Interrupt current turn
  Ctrl+T         Toggle task list

Split-pane mode:
  Click a pane   Interact directly
  All output visible simultaneously
```

### Disable background tasks entirely

```bash
export CLAUDE_CODE_DISABLE_BACKGROUND_TASKS=1
```

## Book Reference

See Chapter 12 of *Claude Code Cookbook* for the full recipe.
