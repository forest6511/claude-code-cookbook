# Recipe 52: Managing the Skill Character Budget

As you add more Skills, some stop appearing in Claude Code's context -- they silently disappear from auto-invocation.

## Quick Reference

### Budget formula

```text
Budget = 2% of context window (min 16,000 chars)

When total description text exceeds this budget,
Skills are excluded from context.

Excluded Skills:
- Can't be auto-invoked by Claude Code
- Can still be invoked manually with /name
```

### Check status

```text
> /context

# If you see this warning, you've hit the limit:
Warning: Some skills were excluded due to
  character budget
```

### Override the budget

```bash
# Double the budget
export SLASH_COMMAND_TOOL_CHAR_BUDGET=32000

# Start Claude Code
claude
```

### Optimize descriptions

```yaml
# Verbose: 180 characters
---
description: >-
  Performs comprehensive code review checking for
  bugs, security vulnerabilities, performance,
  style violations, and best practices. Generates
  detailed report with severity and suggested fixes.
---

# Concise: 85 characters
---
description: >-
  Reviews code for bugs, security, performance.
  Use when reviewing PRs or checking quality.
---
```

### Budget optimization strategy

```text
- Set disable-model-invocation: true on task Skills
  (deploy, commit, release) -- saves budget
- Keep reference Skills (conventions, patterns)
  with default settings -- needs auto-invocation
- Delete unused Skills regularly
- Consolidate overlapping descriptions
```

## Book Reference

See Chapter 9 of *Claude Code Cookbook* for the full recipe.
