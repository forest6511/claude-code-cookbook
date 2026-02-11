---
name: list-issues
description: "List open issues sorted by
  priority."
disable-model-invocation: true
---
# Issue Triage

1. Get open issues via gh CLI
2. Prioritize by label:
   - priority: high -> critical
   - bug -> high
   - enhancement -> normal
   - good first issue -> low
3. Display as sorted table:

| # | Title | Labels | Priority |
