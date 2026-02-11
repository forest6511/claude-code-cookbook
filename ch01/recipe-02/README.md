# Recipe 02: The Memory Hierarchy

Project-level settings and personal preferences are mixed together in one file, causing conflicts in team environments and unnecessary noise for individual developers.

## Files

- `home-claude-md/CLAUDE.md` — User memory (`~/.claude/CLAUDE.md`): personal preferences that apply to all projects
- `project/CLAUDE.md` — Project memory (`./CLAUDE.md`): team-shared project context committed to Git
- `project/CLAUDE.local.md` — Local memory (`./CLAUDE.local.md`): personal, project-specific settings (gitignored)

## Book Reference

See Chapter 1 of *Claude Code Cookbook* for the full recipe.
