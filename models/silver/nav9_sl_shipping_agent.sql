{{
    config(
        materialized='table'
    )
}}

select *
from {{ source('raw', 'nav9_sl_shipping_agent') }}