-- models\staging\stg_returned_orders.sql
select
     distinct order_id

from {{ source('superstore', 'returned_orders') }}