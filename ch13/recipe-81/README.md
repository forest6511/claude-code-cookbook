# Recipe 81: Matcher Patterns for Targeted Hook Execution

Hooks fire on every occurrence of an event, but you only want them to trigger for specific tools or conditions.

## Files

- `.claude/settings.json` — Multiple matcher pattern examples (Bash, Edit|Write, MCP tools, SessionStart compact)

## Quick Reference

### Common Regex Patterns for Tool Matching

```text
Bash             Exact match - Bash only
Edit|Write       OR - either tool
Notebook.*       Prefix - NotebookEdit, etc.
mcp__.*          All MCP server tools
mcp__github__.*  All GitHub MCP tools
mcp__.*__write.* Write tools across all servers
```

### What Matchers Filter by Event

```text
PreToolUse, PostToolUse,
PostToolUseFailure, PermissionRequest
  Matches: tool name

SessionStart
  Matches: how session started (startup, resume, compact)

SessionEnd
  Matches: why session ended (clear, logout, other)

Notification
  Matches: notification type (permission_prompt, idle_prompt)

SubagentStart, SubagentStop
  Matches: agent type

PreCompact
  Matches: trigger type (manual, auto)
```

Matchers are case-sensitive. `bash` won't match `Bash`.

## Book Reference

See Chapter 13 of *Claude Code Cookbook* for the full recipe.
