# Recipe 61: Give Agents Persistent Memory

Sub-agents lose all knowledge between sessions. Every time a reviewer runs, it rediscovers the same project conventions from scratch.

## Files

- `.claude/agents/code-reviewer.md` -- Agent with `memory: user` for cross-project knowledge
- `.claude/agents/debugger.md` -- Agent with `memory: project` for project-specific knowledge
- `MEMORY.md` -- Example memory file showing recommended structure

## Book Reference

See Chapter 10 of *Claude Code Cookbook* for the full recipe.
