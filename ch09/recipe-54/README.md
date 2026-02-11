# Recipe 54: Embed Reference Data in Skills

Your SKILL.md files are growing large. Loading the full content on every invocation wastes context window tokens.

## Files

- `.claude/skills/bigquery-analysis/SKILL.md` -- Tier 2 overview with links to reference files
- `.claude/skills/bigquery-analysis/reference/finance.md` -- Tier 3 finance schema reference
- `.claude/skills/bigquery-analysis/reference/sales.md` -- Tier 3 sales schema reference
- `.claude/skills/bigquery-analysis/reference/product.md` -- Tier 3 product schema reference
- `.claude/skills/bigquery-analysis/reference/marketing.md` -- Tier 3 marketing schema reference
- `.claude/skills/bigquery-analysis/examples/common-queries.md` -- Tier 3 common query patterns

## Book Reference

See Chapter 9 of *Claude Code Cookbook* for the full recipe.
