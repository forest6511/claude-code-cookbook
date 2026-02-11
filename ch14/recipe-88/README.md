# Recipe 88: Git Checkpoints Before Code Changes

Claude edits multiple files at once. When something goes wrong, you want to roll back to the exact state before the changes started.

## Files

- `.claude/hooks/git-checkpoint.sh` — Auto-commits all changes before edits with 60-second debounce
- `.claude/settings.json` — PreToolUse hook configuration for Edit/Write tools

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
