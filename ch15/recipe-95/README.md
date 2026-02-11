# Recipe 95: Multi-Session and Team Development Patterns

You need to work on multiple features in parallel, or share Claude Code workflows across a team, but session management and configuration sharing are ad hoc.

## Files

- `.claude/settings.local.json` — Personal (gitignored) settings example with notification hooks

## Quick Reference

### Git Worktrees for Parallel Sessions

```bash
# Main worktree (auth feature)
cd ~/projects/my-app
claude
> /rename auth-feature

# Second worktree (payment feature)
git worktree add ../my-app-payment -b feature/payment
cd ../my-app-payment
claude
> /rename payment-feature
```

### Session Management

```bash
claude --continue          # Resume most recent session
claude --resume auth-feature  # Resume named session
claude --resume            # Open session picker
```

### Session Picker Shortcuts

```text
Up/Down    Navigate sessions
Right/Left Expand/collapse groups
Enter      Select session
P          Preview content
R          Rename session
/          Search
A          Toggle all projects
B          Filter by current branch
Esc        Exit
```

### Team-Shared Configuration (Committed to Git)

```text
.claude/
  settings.json    # Team permissions, hooks
  agents/          # Shared sub-agent definitions
  rules/           # Project-specific rules
  skills/          # Shared Skills
.mcp.json          # MCP server config
CLAUDE.md          # Project conventions
```

## Book Reference

See Chapter 15 of *Claude Code Cookbook* for the full recipe.
