# Recipe 03: Conditional Rules with .claude/rules/

Your `CLAUDE.md` is getting long, and rules meant for TypeScript files are loaded even when Claude Code is working on Python. Every rule consumes tokens whether it's relevant or not.

## Files

- `.claude/rules/general.md` — Unconditional rules (no frontmatter): applies to all files
- `.claude/rules/typescript.md` — TypeScript rules with `paths` frontmatter for `.ts`/`.tsx` files
- `.claude/rules/testing.md` — Testing rules with `paths` frontmatter for test files

## Book Reference

See Chapter 1 of *Claude Code Cookbook* for the full recipe.
