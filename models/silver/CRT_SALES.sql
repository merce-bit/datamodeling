
-- Configuratie
{{ config(
  materialized='table',
  unique_key='hash_key'
) }}

-- Creëer de hashkey op basis van de gecombineerde gegevens

SELECT
    sales."no_",
    line."Document No_"
    ,md5(line."Document No_" || sales."no_") as hash_key
    ,sales."Sell-to Customer No_" as "Selling_cust"
    ,sales."Bill-to Customer No_" as "Billing_cust"
    ,sales."Bill-to Name" as "Name"
    ,sales."Ship-to Address" as "Shipping_adres"
    ,sales."Ship-to City" as "Shipping_city"
    ,sales."Order Date" as "Order_date"
    ,sales."Shipment Date" as "Shipping_date"
    ,sales."Location Code" as "Location_code"
    ,sales."Currency Code" as "Currency_code"
FROM 
    {{ source("raw", "nav9_nl_sales_header") }} sales
JOIN
    {{ source("raw", "nav9_nl_sales_line") }} line
ON
    sales."no_" = line."Document No_"




