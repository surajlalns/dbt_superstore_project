
  create or replace   view DBTSURAJANALYTICS.ANLYTICSSCHEMA.dim_products
  
   as (
    -- models\marts\core\dim_products.sql
with products as (
    select
         distinct product_id
        ,product_name
        ,product_category
        ,product_subcategory
        ,segment

    from DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_orders
)
select
    100 + ROW_NUMBER() OVER(order by null) as id
    ,*
from products
  );

