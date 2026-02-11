# Recipe 79: Understanding Hook Events and Lifecycle

You don't know which hook events exist or when they fire, so you can't choose the right hook point for your automation.

## Quick Reference

### Hook Lifecycle

```text
Session lifecycle:
  SessionStart -> agent loop -> SessionEnd

Agent loop (repeats per tool call):
  UserPromptSubmit
    -> PreToolUse -> PermissionRequest
    -> [tool executes]
    -> PostToolUse / PostToolUseFailure
    -> Notification
  Stop

Sub-agent events:
  SubagentStart -> SubagentStop

Agent Teams events:
  TeammateIdle, TaskCompleted

Other:
  PreCompact
```

### All 14 Hook Events

```text
SessionStart       Session begins/resumes
UserPromptSubmit   Prompt submitted     [blockable]
PreToolUse         Before tool runs     [blockable]
PermissionRequest  Permission dialog    [blockable]
PostToolUse        After tool succeeds
PostToolUseFailure After tool fails
Notification       Notification sent
SubagentStart      Sub-agent spawned
SubagentStop       Sub-agent finishes   [blockable]
Stop               Claude stops         [blockable]
TeammateIdle       Teammate going idle  [blockable]
TaskCompleted      Task marked done     [blockable]
PreCompact         Before compaction
SessionEnd         Session ends
```

### Three Hook Types

```text
command  Run a shell script. Fast, predictable.
         stdin: JSON, exit code: result.

prompt   Ask an LLM (Haiku by default) for a
         yes/no decision. For ambiguous checks.

agent    Spawn a sub-agent with tool access
         (Read, Grep, Glob). For checks that
         need file inspection.
```

## Book Reference

See Chapter 13 of *Claude Code Cookbook* for the full recipe.
