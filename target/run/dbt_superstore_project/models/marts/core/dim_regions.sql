
  create or replace   view DBTSURAJANALYTICS.ANLYTICSSCHEMA.dim_regions
  
   as (
    -- models\marts\core\dim_regions.sql
with regions as (
    select
        distinct region as region_name
    from DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_sales_managers
)
select
    100 + ROW_NUMBER() OVER(order by null) as region_id
    ,*
from regions
  );

