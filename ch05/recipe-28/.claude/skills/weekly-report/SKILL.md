---
name: weekly-report
description: Generate a weekly sales report and save it to Notion
---

## Weekly Report Generation

Generate a weekly sales report:

1. Query this week's sales by category and day using DBHub MCP
2. Calculate week-over-week change rates
3. Format as a Markdown table
4. Save as a new page in Notion's "Weekly Reports" database

### SQL Guidelines
- Period: most recent Monday through Sunday
- Dimensions: category, date
- Metrics: revenue, order count, WoW change
