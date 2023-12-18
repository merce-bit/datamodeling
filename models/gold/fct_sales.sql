{{ config(materialized="view") }}

with customer as (
 
    select
    "CUSTOMER ID"
    , "Name"
    , address
    , city
    , contact
    , "Territory Code"
 
 
    from {{ ref('nav9_sl_customer') }}
 
 
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

        left join customer as cust
        on sale."CUSTOMER ID" = cust."CUSTOMER ID"