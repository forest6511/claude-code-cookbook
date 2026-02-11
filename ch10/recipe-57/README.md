# Recipe 57: Understand the Task Tool

You don't understand how sub-agents work, how they relate to the main conversation, or when to use them.

## Quick Reference

### How sub-agents work

```text
Main conversation
  |
  +-- [Task tool call]
  |     +- Creates its own context window
  |     +- Has its own system prompt
  |     +- Runs with specified tools
  |     +- Returns summary to main
  |
  +-- Receives result, continues work
```

The main conversation's history is *not* passed to the sub-agent. It receives only its own system prompt and the `prompt` parameter.

### Two execution modes

**Foreground** (default): Main conversation waits. Permission prompts pass through to you.

**Background**: Sub-agent runs concurrently. Press **Ctrl+B** to background a running sub-agent, or ask "run this in the background" upfront.

### Resume with agent ID

```text
Round 1: "Run the test suite"
  -> Sub-agent runs, reports 3 failures
  -> Agent ID: agent-abc123

Round 2: "Fix the auth module failure from that test run"
  -> Claude resumes agent-abc123
  -> Full context preserved
```

### Key constraints

- **No nesting**: Sub-agents can't spawn other sub-agents
- **No main history**: Main conversation context not passed to sub-agents
- **No MCP in background**: Background sub-agents can't use MCP tools
- **Result accumulation**: Many sub-agent results consume main context
- Disable background tasks: `CLAUDE_CODE_DISABLE_BACKGROUND_TASKS=1`

## Book Reference

See Chapter 10 of *Claude Code Cookbook* for the full recipe.
