# Sales Reference

## Contents
- Deals (deals, deal_stages)
- Pipeline (pipeline_snapshots)
- Accounts (accounts, account_contacts)

## Deals
### deals
| Column | Type | Description |
|--------|------|-------------|
| deal_id | STRING | Unique deal identifier |
| account_id | STRING | Associated account |
| amount | DECIMAL | Deal value |
| stage | STRING | Current pipeline stage |
| close_date | DATE | Expected close date |
