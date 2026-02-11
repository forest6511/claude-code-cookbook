# Recipe 50: Namespace Design and Plugin Distribution

As teams share Skills, name collisions become inevitable. Plugins bundle Skills and Hooks into a distributable package with namespace prefixes.

## Files

- `.claude-plugin/plugin.json` -- Plugin manifest with name, description, version
- `skills/review-code/SKILL.md` -- Example review Skill (accessed as `my-team-plugin:review-code`)
- `skills/deploy/SKILL.md` -- Example deploy Skill
- `skills/test-runner/SKILL.md` -- Example test runner Skill
- `hooks/hooks.json` -- Plugin-scoped Hooks using `${CLAUDE_PLUGIN_ROOT}`

## Book Reference

See Chapter 9 of *Claude Code Cookbook* for the full recipe.
