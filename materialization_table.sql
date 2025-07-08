{{ config(materialized='view') }}

select 
    c.customer_id,
    c.name,
    o.order_id,
    o.amount
from dev_Db.dev_schema.customers c
join dev_Db.dev_schema.orders o on c.customer_id = o.customer_id