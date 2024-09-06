
  
    

        create or replace transient table DBTSURAJANALYTICS.ANLYTICSSCHEMA.dim_shipping
         as
        (-- models\marts\core\dim_shipping.sql

with shipping as (
    select
        distinct ship_mode
    from DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_orders
)
select
    100 + ROW_NUMBER() OVER(order by null) as id
    ,*
from shipping
        );
      
  