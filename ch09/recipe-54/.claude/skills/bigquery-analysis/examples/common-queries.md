# Common Query Patterns

## Revenue Trend (Monthly)
```sql
SELECT
  month,
  mrr,
  arr,
  mrr - LAG(mrr) OVER (ORDER BY month) AS mrr_change
FROM revenue_monthly
WHERE month >= DATE_SUB(CURRENT_DATE(), INTERVAL 12 MONTH)
ORDER BY month
LIMIT 12
```

## Top Accounts by Revenue
```sql
SELECT
  a.account_id,
  a.name,
  SUM(r.amount) AS total_revenue
FROM revenue_daily r
JOIN accounts a ON r.account_id = a.account_id
WHERE r.date >= DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
  AND a.account_type != 'test'
GROUP BY a.account_id, a.name
ORDER BY total_revenue DESC
LIMIT 20
```

## API Error Rate
```sql
SELECT
  DATE(timestamp) AS date,
  COUNT(*) AS total_calls,
  COUNTIF(status_code >= 500) AS errors,
  ROUND(COUNTIF(status_code >= 500) / COUNT(*) * 100, 2) AS error_rate
FROM api_calls
WHERE timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 7 DAY)
GROUP BY date
ORDER BY date
```
