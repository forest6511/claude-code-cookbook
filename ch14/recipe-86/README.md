# Recipe 86: Auto-Running Tests on File Changes (Async Hooks)

You want tests to run automatically after every file edit, but waiting for them to finish blocks Claude's work.

## Files

- `.claude/hooks/run-tests-async.sh` — Runs `npm test` in background after source file edits, reports results via `systemMessage`
- `.claude/settings.json` — PostToolUse async hook configuration with 300-second timeout

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
