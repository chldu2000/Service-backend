# Service-backend
Citi training 2022 summer
this repository is build to save the backend code

## First step

Please initialize database with [this sql file](./src/main/resources/sql/citi.sql) to generate data structures before you start the project.

## Request example

### Query transaction records in one day

Query transaction record for a certain time period (such as 1 day):

**GET**: `http://127.0.0.1:8081/transaction_records/1D`

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": [
        {
            "date": "2022-08-29",
            "ticker": "不存在的企业",
            "ric": "fake",
            "size": 10,
            "price": 10.0,
            "currency": "CNY",
            "salesperson": "salesman1",
            "client_name": "用户1号",
            "client_side": 1,
            "notional_usd": 1.4705881940452297,
            "issuer_sector": "Sector1",
            "ht_pt": 1
        },
        {
            "date": "2022-08-29",
            "ticker": "不存在的企业",
            "ric": "fake",
            "size": 10,
            "price": 10.0,
            "currency": "CNY",
            "salesperson": "salesman1",
            "client_name": "用户1号",
            "client_side": 1,
            "notional_usd": 1.4705881940452297,
            "issuer_sector": "Sector1",
            "ht_pt": 1
        }
    ]
}
```

Query transaction summary in 1 day:

**GET**: `http://127.0.0.1:8081/transaction_records/summary/1D`

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": {
        "total_buy": 200.0,
        "total_sell": 0.0,
        "quantity": 200.0,
        "buy_notional": 29.411763880904594,
        "sell_notional": 0.0,
        "net_notional": 29.411763880904594,
        "list": [
            {
                "date": "2022-08-29",
                "ticker": "不存在的企业",
                "ric": "fake",
                "size": 10,
                "price": 10.0,
                "currency": "CNY",
                "salesperson": "salesman1",
                "client_name": "用户1号",
                "client_side": 1,
                "notional_usd": 1.4705881940452297,
                "issuer_sector": "Sector1",
                "ht_pt": 1
            },
            {
                "date": "2022-08-29",
                "ticker": "不存在的企业",
                "ric": "fake",
                "size": 10,
                "price": 10.0,
                "currency": "CNY",
                "salesperson": "salesman1",
                "client_name": "用户1号",
                "client_side": 1,
                "notional_usd": 1.4705881940452297,
                "issuer_sector": "Sector1",
                "ht_pt": 1
            }
        ]
    }
}
```

Others:

Query all transaction records:

**GET**: `http://127.0.0.1:8081/transaction_records`

Query transaction summary for all records:

**GET**: `http://127.0.0.1:8081/transaction_records/summary`

### Insert a transaction record

For example:

**POST**: `http://127.0.0.1:8081/transaction_records` with body:

```json
{
    "client_name": "用户1号",
    "client_side": "buy",
    "ticker": "不存在的企业",
    "ric": "fake",
    "size": 10,
    "price": 10.0,
    "currency": "CNY",
    "issuer_sector": "Sector1",
    "salesperson": "salesman1",
    "ht_pt": 1
}
```

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": null
}
```

### Get chart data: buy, sell... each day

Query all chart data (history):

**GET**: `http://127.0.0.1:8081/history`

Query all chart data for a certain time period (such as 1 day):

**GET**: `http://127.0.0.1:8081/history/1D`

Responses will be like:

```json
{
    "status": 200,
    "message": "成功!",
    "data": [
        {
            "date": "2022-08-25",
            "buy": 14.705881940452297,
            "sell": 0.0,
            "cumulative_net": 14.705881940452297
        },
        {
            "date": "2022-08-29",
            "buy": 229.4117638809046,
            "sell": 0.0,
            "cumulative_net": 229.4117638809046
        }
    ]
}
```
