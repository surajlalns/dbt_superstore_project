-- models\marts\core\dim_customers.sql
with customers as (
    select
        distinct customer_id
        ,customer_name
    from DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_orders
)
select
    100 + ROW_NUMBER() OVER(order by null) as id
    ,*
from customers