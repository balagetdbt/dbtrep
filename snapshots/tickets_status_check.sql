{% snapshot tickets_status_check %}

{{
  config(
    target_schema='dev_schema',
    strategy='check',
	unique_key='ticket_id',
	check_cols=['ticket_status'],
	invalidate_hard_delets=True
	 )  
 }}		
select * from {{ ref('tickets')}}

{% endsnapshot %}