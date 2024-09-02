-- models\staging\stg_sales_managers.sql
select
     person as manager_name
    ,region

from {{ source('superstore', 'sales_managers') }}