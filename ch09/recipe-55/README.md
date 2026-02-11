# Recipe 55: Apply the Four Skill Archetypes

You want Hooks that only run during a specific Skill's execution, not globally for the entire session.

## Files

- `.claude/skills/secure-ops/SKILL.md` -- PreToolUse hook for security validation on Bash commands
- `.claude/skills/implement-feature/SKILL.md` -- PostToolUse hook to auto-run tests after file changes
- `.claude/skills/daily-report/SKILL.md` -- PreToolUse hook with `once: true` for one-time initialization
- `.claude/skills/monitored-deploy/SKILL.md` -- All hook types: PreToolUse, PostToolUse, and Stop

## Book Reference

See Chapter 9 of *Claude Code Cookbook* for the full recipe.
