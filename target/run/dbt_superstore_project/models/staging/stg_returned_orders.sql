
  create or replace   view DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_returned_orders
  
   as (
    -- models\staging\stg_returned_orders.sql
select
     distinct order_id

from dbtsurajraw.superstoresuraj.returned_orders
  );

