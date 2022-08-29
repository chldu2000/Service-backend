# Service-backend
Citi training 2022 summer
this repository is build to save the backend code

## First step

Please initialize database with [this sql file](./src/main/resources/sql/citi.sql) to generate data structures before you start the project.

## Request example

### Query transaction records

Query transaction records using “TransactionView”.

For example, query all transaction:

GET: `http://127.0.0.1:8081/transaction_view`

Response:

```json
{
    "status": 200,
    "message": "成功!",
    "data": [
        {
            "date": "2022-08-25",
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

Query transaction record for a certain time period (such as 1 day):

GET: `http://127.0.0.1:8081/transaction_view/1D`

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
        }
    ]
}
```

### Insert a transaction record

For example:

POST: `http://127.0.0.1:8081/transaction_records` with body:

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
