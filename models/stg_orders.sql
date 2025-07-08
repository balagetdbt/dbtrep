{{ config(materialized='view') }}
select
  id as order_id,
  customer_id,
  amount,
  order_date,
  updated_at
from dev_db.dev_schema.orders;