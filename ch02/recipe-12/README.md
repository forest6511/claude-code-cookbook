# Recipe 12: Session Management

You want to resume previous work but aren't sure when to use `--continue`, `/resume`, or `/rewind` -- or how they differ.

## Quick Reference

### Three session management tools

| Tool | Type | Purpose |
|---|---|---|
| `claude -c` (`--continue`) | CLI flag | Resumes the most recent session in the current directory |
| `/resume` (CLI: `claude -r`) | Command | Resumes a specific session by name or ID |
| `/rewind` (or `Esc` + `Esc`) | In-session | Rolls back within the current session |

### Name and resume sessions

```bash
# Name the session before leaving
> /rename auth-refactor
> /exit

# Resume the last session
claude -c

# Resume a specific session by name
claude -r auth-refactor

# Browse recent sessions in a picker
claude -r
```

### Rewind menu actions

Press `Esc` twice to open the rewind menu:

- **Restore code and conversation**: Revert both to the selected point
- **Restore conversation**: Roll back conversation only
- **Restore code**: Roll back code only
- **Summarize from here**: Compress everything after the selected point

### Fork a session

```bash
# Fork from the last session
claude --continue --fork-session

# Fork a specific session
claude --resume auth-refactor --fork-session
```

### Resume a PR-linked session

```bash
claude --from-pr 123
```

## Book Reference

See Chapter 2 of *Claude Code Cookbook* for the full recipe.
