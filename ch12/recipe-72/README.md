# Recipe 72: Isolate with Git Worktrees

Branch switching interrupts your flow. You want multiple features developing simultaneously in separate directories.

## Quick Reference

### Create and manage worktrees

```bash
# Create a worktree for a new branch
git worktree add \
  ../project-feature-auth -b feature/auth

# Create a worktree for an existing branch
git worktree add \
  ../project-bugfix-123 bugfix/123

# List worktrees
git worktree list

# Remove when done
git worktree remove ../project-feature-auth
```

### Run Claude Code in each worktree

```bash
# Terminal 1: auth feature
cd ../project-feature-auth && claude

# Terminal 2: bugfix
cd ../project-bugfix-123 && claude

# Terminal 3: main development
cd /path/to/original/project && claude
```

### Install dependencies per worktree

```bash
# JavaScript/TypeScript
cd ../project-feature-auth && npm install

# Python
cd ../project-feature-auth && pip install -e .
```

### Agent Teams vs Worktrees

```text
Agent Teams:
  Automated coordination (task list, messaging)
  Use when teammates need to coordinate

Git Worktrees:
  Manual parallel (independent sessions)
  Use for completely independent tasks
```

### Tips

- Name sessions with `claude --resume feature-auth` for easy re-entry
- `/resume` session picker lists sessions from all worktrees of the same repo
- Worktrees share Git history and remote connections but have independent file state

## Book Reference

See Chapter 12 of *Claude Code Cookbook* for the full recipe.
