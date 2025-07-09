{{
    config(
        materialized='view',
        secure=true
    )
}}
select * from orders