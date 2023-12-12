{{ 
    config(
            materialized='table'
          ) 
}}

select
    "Document Type",
    no_ as "primary key",
    "Sell-to Customer No_",
    "Bill-to Customer No_",
    "Bill-to Name",
    "Bill-to Address",
    "Bill-to City",
    "Bill-to Contact",
    "Ship-to Name",
    "Ship-to Address",
    "Ship-to City",
    "Ship-to Contact",
    "Order Date",
    "Posting Date",
    "Shipment Date",
    "Posting Description",
    "Payment Terms Code",
    "Due Date",
    "Payment Discount _",
    "Pmt_ Discount Date",
    "Shipment Method Code",
    "Location Code",
    "Shortcut Dimension 1 Code",
    "Customer Posting Group",
    "Currency Code",
    "Currency Factor",
    "Invoice Disc_ Code",
    "Customer Disc_ Group",
    "Language Code",
    "Salesperson Code",
    ship,
    invoice,
    "VAT Registration No_",
    "Gen_ Bus_ Posting Group",
    "VAT Country_Region Code",
    "Sell-to Customer Name",
    "Sell-to Address",
    "Sell-to City",
    "Sell-to Contact",
    "Bill-to Post Code",
    "Bill-to Country_Region Code",
    "Sell-to Post Code",
    "Sell-to Country_Region Code",
    "Ship-to Post Code",
    "Ship-to Country_Region Code",
    "Document Date",
    "Shipping Agent Code",
    "Package Tracking No_",
    "No_ Series",
    "Posting No_ Series",
    "Shipping No_ Series",
    "VAT Bus_ Posting Group",
    "Prepayment Due Date",
    "Prepmt_ Pmt_ Discount Date",
    "Prepmt_ Payment Terms Code",
    "Prepmt_ Payment Discount _",
    "Job Queue Entry ID",
    "Dimension Set ID",
    "Sell-to Contact No_",
    "Bill-to Contact No_",
    "Requested Delivery Date",
    "Promised Delivery Date",
    "Shipping Time",
    "Outbound Whse_ Handling Time",
    "Shipping Agent Service Code",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_nl_sales_header") }}
