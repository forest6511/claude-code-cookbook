# Product Reference

## Contents
- API usage (api_calls, api_errors)
- Feature adoption (feature_events, feature_flags)

## API Usage
### api_calls
| Column | Type | Description |
|--------|------|-------------|
| timestamp | TIMESTAMP | Call time (UTC) |
| endpoint | STRING | API endpoint path |
| account_id | STRING | Calling account |
| latency_ms | INT64 | Response time |
| status_code | INT64 | HTTP status |
