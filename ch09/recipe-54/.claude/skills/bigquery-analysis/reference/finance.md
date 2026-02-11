# Finance Reference

## Contents
- Revenue tables (revenue_daily, revenue_monthly)
- Billing tables (billing_events, subscriptions)
- ARR calculations (arr_snapshots, arr_movements)
- Common JOIN patterns

## Revenue Tables
### revenue_daily
| Column | Type | Description |
|--------|------|-------------|
| date | DATE | Date (UTC) |
| amount | DECIMAL | Revenue amount |
| currency | STRING | ISO currency code |
| source | STRING | Revenue source |

### revenue_monthly
| Column | Type | Description |
|--------|------|-------------|
| month | DATE | First day of month |
| mrr | DECIMAL | Monthly recurring revenue |
| arr | DECIMAL | Annual recurring revenue |
