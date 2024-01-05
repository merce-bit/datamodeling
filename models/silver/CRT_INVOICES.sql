
-- Configuratie
{{ config(
  materialized='table',
  unique_key='hash_key'
) }}

-- Creëer de hashkey op basis van de gecombineerde gegevens

SELECT
    header."No_"
    ,line."Document No_"
    ,md5("Document No_" || "No_") as hash_key
    ,header."Sell-to Customer No_" as "Selling_cust"
    ,header."Bill-to Customer No_" as "Billing_cust"
    ,header."Bill-to Name" as "Name"
    ,header."Ship-to Address" as "Shipping_adres"
    ,header."Ship-to City" as "Shipping_city"
    ,header."Order Date" as "Order_date"
    ,header."Shipment Date" as "Shipping_date"
    ,header."Location Code" as "Location_code"
    ,header."Currency Code" as "Currency_code"
FROM 
    {{ source("raw", "nav9_nl_sales_invoice_header") }} header
JOIN
    {{ source("raw", "nav9_nl_sales_invoice_line") }} line
ON
    header."No_" = line."Document No_"





