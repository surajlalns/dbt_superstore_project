-- models\marts\core\dim_regional_managers.sql
with regional_managers as (
    select
         manager_name
        ,r.region_id as region_id

    FROM DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_sales_managers sm 
    JOIN DBTSURAJANALYTICS.ANLYTICSSCHEMA.dim_regions r ON sm.region = r.region_name
)

select
    1000 + ROW_NUMBER() OVER(order by null) as id
    ,*
from regional_managers