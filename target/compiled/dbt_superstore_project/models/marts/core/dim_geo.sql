-- models\marts\core\dim_geo.sql
with geo as (
    select
         distinct country
         ,city
         ,state
         ,r.region_id
         ,postal_code

    from DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_orders as o
    join DBTSURAJANALYTICS.ANLYTICSSCHEMA.dim_regions r ON o.region = r.region_name
)
select 
 10 + ROW_NUMBER() over(order by null) as id
 ,*
from geo