# Recipe 83: Auto-Linting Before Commits

You want lint and formatting to run automatically before every commit, but relying on Claude to remember is unreliable.

## Files

- `.claude/hooks/pre-commit-lint.sh` — Detects `git commit` commands, runs ESLint on staged JS/TS files, formats with Prettier
- `.claude/settings.json` — PreToolUse hook configuration for Bash commands

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
