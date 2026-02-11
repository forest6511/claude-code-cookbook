# Recipe 90: Evaluator-Optimizer Loops with Stop Hooks

Claude declares a task complete, but tests are failing or requirements are unmet. You want automatic verification with a feedback loop.

## Files

- `.claude/hooks/verify-completion.sh` — Stop hook that runs tests and lint; blocks completion (exit 2) if checks fail; uses `stop_hook_active` to prevent infinite loops
- `.claude/settings.json` — Stop hook configuration with 120-second timeout

## Book Reference

See Chapter 14 of *Claude Code Cookbook* for the full recipe.
