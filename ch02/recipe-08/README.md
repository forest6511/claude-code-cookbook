# Recipe 08: Custom Compaction with /compact

When you run `/compact`, important information gets summarized away while irrelevant details survive. The default compaction is too generic for focused work.

## Quick Reference

### Custom compaction with instructions

```text
> /compact Focus on API changes and test results
```

### CLAUDE.md compaction policy

Add this to your `CLAUDE.md` so every team member gets consistent compaction:

```markdown
# Compact instructions

When you're using /compact, focus on:
- Code change diffs and their rationale
- Test results (pass/fail)
- Architecture decisions
- Unresolved issues and blockers
```

### Key commands

| Situation | Action |
|---|---|
| Context above 70% | `/compact` with custom instructions |
| Task switch | `/clear` (reset completely) |
| After long debug session | `Esc` + `Esc` then "Summarize from here" |
| Context above 90% | Act before auto-compaction fires |

### Session naming and resumption

```text
> /rename auth-refactor
> /clear
```

Resume later with `/resume auth-refactor` or `claude -r auth-refactor`.

## Book Reference

See Chapter 2 of *Claude Code Cookbook* for the full recipe.
