{{
    config(
        materialized='table'
    )
}}

select *
from {{ source('raw', 'nav9_sl_sales_price') }}