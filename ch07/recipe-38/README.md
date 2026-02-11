# Recipe 38: Running Skills as Sub-agents with context:fork

Running a heavy Skill inline consumes your main conversation context, degrading quality for the rest of the session.

## Files

- `.claude/skills/deep-research/SKILL.md` — Forked skill using built-in Explore agent
- `.claude/skills/security-scan/SKILL.md` — Forked skill using custom agent
- `.claude/skills/pr-summary/SKILL.md` — Forked skill with shell preprocessing
- `.claude/agents/security-auditor.md` — Custom agent definition for security scanning

## Book Reference

See Chapter 7 of *Claude Code Cookbook* for the full recipe.
