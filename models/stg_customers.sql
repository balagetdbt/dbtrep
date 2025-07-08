{{ config(materialized='view') }}

select
  id as customer_id,
  full_name,
  email,
  created_at
from dev_db.dev_schema.customers