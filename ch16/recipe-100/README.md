# Recipe 100: Building Your Ultimate Development Environment

You're using Claude Code with default settings. You've learned individual features throughout this book, but haven't integrated them into a cohesive environment.

## Files

- `user-settings.json` — User-level defaults (`~/.claude/settings.json`) with safe git permissions and network denials
- `.claude/settings.json` — Project-level settings with team permissions, hooks, and audit logging
- `.claude/settings.local.json` — Personal overrides (gitignored) with extra permissions and model preference

## Quick Reference

### Settings Precedence (Highest to Lowest)

| Priority | Scope | Location |
|---|---|---|
| 1 (highest) | Managed | System directory |
| 2 | CLI flags | `--model`, `--permission-mode` |
| 3 | Local | `.claude/settings.local.json` |
| 4 | Project | `.claude/settings.json` |
| 5 (lowest) | User | `~/.claude/settings.json` |

### Build Your Environment in Stages

1. **Foundation** — `CLAUDE.md`, `.claude/rules/`, permissions
2. **External Tools** — `.mcp.json`, GitHub MCP, project-specific MCP servers
3. **Automation** — Skills, sub-agents, prompt templates
4. **Quality Gates** — PreToolUse, PostToolUse, Stop hooks
5. **Integration** — CI/CD, headless scripts, team patterns

### Team-Shared Directory Structure

```text
.claude/
  settings.json       # Team rules (committed)
  settings.local.json # Personal (gitignored)
  agents/             # Custom sub-agents
  skills/             # Shared Skills
  rules/              # Conditional rules
CLAUDE.md             # Project context
.mcp.json             # MCP server config
```

## Book Reference

See Chapter 16 of *Claude Code Cookbook* for the full recipe.
