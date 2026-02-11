# Recipe 58: Choosing Between Built-in Agent Types

Claude Code has multiple built-in sub-agent types, and you're not sure which one to use for a given task.

## Quick Reference

### Built-in agent types

| Agent | Model | Tools | Best for |
|-------|-------|-------|----------|
| **Explore** | Haiku (fast, cheap) | Read-only | File discovery, code search, structure |
| **Plan** | Inherits parent | Read-only | Research for plan mode |
| **general-purpose** | Inherits parent | All tools | Complex tasks needing read + write |
| **Bash** | Inherits parent | Bash only | Terminal command execution |

### Decision flow

```text
Does the task modify files?
+-- No -> Is it codebase exploration?
|         +-- Yes -> Explore (fast, cheap)
|         +-- No  -> Plan (research for planning)
+-- Yes -> Does it need all tools?
           +-- Yes -> general-purpose
           +-- No  -> Bash (commands only)
```

### Explore thoroughness levels

- **quick**: Targeted lookup
- **medium**: Moderate exploration
- **very thorough**: Comprehensive analysis

### Requesting a specific agent type

```text
> Use an Explore sub-agent to investigate
  the authentication module's file structure

> Use a general-purpose sub-agent to fix
  the failing tests
```

### Dynamic agent definitions via CLI

```bash
claude --agents '{
  "test-runner": {
    "description": "Run tests and analyze failures",
    "prompt": "Run tests and report failures.",
    "tools": ["Bash", "Read", "Grep", "Glob"],
    "model": "haiku"
  }
}'
```

## Book Reference

See Chapter 10 of *Claude Code Cookbook* for the full recipe.
