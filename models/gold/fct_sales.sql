{{ config(materialized="view") }}

with line as (
 
    select
    "Document No_"
 
 
    from {{ ref('CRT_SALES_LINE') }}
 
 
)

    Select  
    sale."CUSTOMER ID"
    ,sale."SHIP_TO_NAME"
    ,sale."SHIPMENT_METHOD_CODE"
    ,sale."LOCATION_CODE"
    ,sale."CURRENCY_CODE"
    ,sale."LANGUAGE_CODE"
 --   ,cust."BILL_TO_NAME" as "Customer Name"
 
    from {{ ref('CRT_FCT_SALES_HEADER') }} as sale

    left join line
    on sale."PRIMARY_KEY" = line."Document No_"
--   and sale.sales_header_hashkey = line.sales_line_hashkey

