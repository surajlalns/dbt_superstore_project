-- models\marts\core\fct_returns.sql

with returned_orders as (
    select
        distinct order_id

    from DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_returned_orders
)
select
    100 + ROW_NUMBER() OVER(order by null) as id
    ,*
from returned_orders