---
name: bigquery-analysis
description: >-
  Analyze data using BigQuery SQL.
  Use for business metrics, revenue, sales, or
  product analytics.
allowed-tools: Read, Grep, Glob, Bash(python *)
---

# BigQuery Analysis

## Available Datasets

**Finance**: Revenue, ARR, billing
  -> See [reference/finance.md](reference/finance.md)
**Sales**: Deals, pipeline, accounts
  -> See [reference/sales.md](reference/sales.md)
**Product**: API usage, feature adoption
  -> See [reference/product.md](reference/product.md)
**Marketing**: Campaigns, attribution
  -> See [reference/marketing.md](reference/marketing.md)

## Common Query Patterns
See [examples/common-queries.md](examples/common-queries.md)

## Rules
- Exclude test accounts (account_type != 'test')
- Date filters in UTC
- Always LIMIT before running large queries
