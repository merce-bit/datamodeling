{{ config(materialized="view") }}

SELECT
    "no_" as "SalesID"
    ,"Document No_" as "Document_No"    
    ,"Selling_cust"
    ,"Billing_cust"
    ,"Name"
    ,"Shipping_adres"
    ,"Shipping_city"
    ,"Order_date"
    ,"Shipping_date"
    ,"Location_code"
    ,"Currency_code"


FROM  {{ ref("CRT_SALES") }}