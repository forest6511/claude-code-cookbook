# Recipe 60: Controlling Agent Permissions with tools/disallowedTools

Giving sub-agents unrestricted tool access risks unintended modifications. You need fine-grained control over what each agent can do.

## Files

- `.claude/agents/safe-researcher.md` -- Read-only tools allowlist
- `.claude/agents/cautious-developer.md` -- Denylist blocking Write while allowing Edit
- `.claude/agents/coordinator.md` -- Task() with restricted agent type spawning
- `.claude/agents/autonomous-fixer.md` -- acceptEdits permission mode for auto-approval
- `.claude/agents/db-reader.md` -- PreToolUse hook for read-only query validation

## Book Reference

See Chapter 10 of *Claude Code Cookbook* for the full recipe.
