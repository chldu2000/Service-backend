# Service-backend
Citi training 2022 summer.

This repository is build to save the backend code

## First step

Please initialize database with [this sql file](./ServiceProvider/src/main/resources/sql/citi.sql) to generate data structures before you start the project.

Run `EurekaServer`, `ServiceProvider` and `ServiceCnsumer`.

## Request example

Assume that `ServiceCnsumer` runs on `localhost:8090`.

### Query transaction records in one day

Query transaction record for a certain time period (such as 1 day):

**GET**: `http://127.0.0.1:8090/transaction_records/1D`

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": [
        {
            "date": "2022-08-30",
            "ticker": "不存在的企业",
            "ric": "fake",
            "size": 10,
            "price": 10.0,
            "currency": "人民币元",
            "salesperson": "salesman1",
            "client_name": "user1",
            "client_side": "buy",
            "notional_usd": 1.4705881940452297,
            "issuer_sector": "Sector1",
            "ht_pt": 1
        },
        {
            "date": "2022-08-30",
            "ticker": "不存在的企业",
            "ric": "fake",
            "size": 10,
            "price": 10.0,
            "currency": "人民币元",
            "salesperson": "salesman1",
            "client_name": "user1",
            "client_side": "sell",
            "notional_usd": 1.4705881940452297,
            "issuer_sector": "Sector1",
            "ht_pt": 1
        }
    ]
}
```

Query transaction summary in 1 day:

**GET**: `http://127.0.0.1:8090/transaction_records/summary/1D`

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": {
        "total_buy": 100.0,
        "total_sell": 100.0,
        "quantity": 0.0,
        "buy_notional": 14.705881940452297,
        "sell_notional": 14.705881940452297,
        "net_notional": 0.0,
        "list": [
            {
                "date": "2022-08-30",
                "ticker": "不存在的企业",
                "ric": "fake",
                "size": 10,
                "price": 10.0,
                "currency": "人民币元",
                "salesperson": "salesman1",
                "client_name": "user1",
                "client_side": "buy",
                "notional_usd": 1.4705881940452297,
                "issuer_sector": "Sector1",
                "ht_pt": 1
            },
            {
                "date": "2022-08-30",
                "ticker": "不存在的企业",
                "ric": "fake",
                "size": 10,
                "price": 10.0,
                "currency": "人民币元",
                "salesperson": "salesman1",
                "client_name": "user1",
                "client_side": "sell",
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

**GET**: `http://127.0.0.1:8090/transaction_records`

Query transaction summary for all records:

**GET**: `http://127.0.0.1:8090/transaction_records/summary`

### Query share price by RIC

For example, query price of share with RIC 'fake':

**GET**: `http://127.0.0.1:8090/shares/price/fake`

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": {
        "ric": "fake",
        "price": 10.0,
        "currency_name": "人民币元"
    }
}
```

### Insert a transaction record

For example:

**POST**: `http://127.0.0.1:8090/transaction_records` with body:

```json
{
    "client_name": "user1",
    "client_side": "buy",
    "ticker": "不存在的企业",
    "ric": "fake",
    "size": 10,
    "price": 10.0,
    "currency": "人民币元",
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

### Insert a transaction record with nlp results

For example:

**POST**: `http://127.0.0.1:8090/transaction_records/nlp` with a `body`, which is returned by our NLP service:

```json
{
  "client_side": "sell",
  "ticker": "ABST",
  "size": 10
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

**GET**: `http://127.0.0.1:8090/history`

Query all chart data for a certain time period (such as 1 day):

**GET**: `http://127.0.0.1:8090/history/1D`

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
