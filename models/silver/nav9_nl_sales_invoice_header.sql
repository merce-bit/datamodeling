{{
    config(
        materialized='table'
    )
}}

select *
from {{ source('raw', 'nav9_nl_sales_invoice_header') }}