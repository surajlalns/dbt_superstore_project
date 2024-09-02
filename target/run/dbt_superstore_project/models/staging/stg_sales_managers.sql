
  create or replace   view DBTSURAJANALYTICS.ANLYTICSSCHEMA.stg_sales_managers
  
   as (
    -- models\staging\stg_sales_managers.sql
select
     person as manager_name
    ,region

from dbtsurajraw.superstoresuraj.sales_managers
  );

