{{ config(materialized="table") }}

select
    "timestamp",
    "Document Type",
    no_,
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
    "Applies-to Doc_ Type",
    ship,
    invoice,
    "Print Posted Documents",
    "Prepayment No_",
    "VAT Registration No_",
    "Combine Shipments",
    "Gen_ Bus_ Posting Group",
    "EU 3-Party Trade",
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
    "Bal_ Account Type",
    correction,
    "Document Date",
    area,
    "Shipping Agent Code",
    "Package Tracking No_",
    "No_ Series",
    "Posting No_ Series",
    "Shipping No_ Series",
    "Tax Liable",
    "VAT Bus_ Posting Group",
    reserve,
    "VAT Base Discount _",
    status,
    "Invoice Discount Calculation",
    "Invoice Discount Value",
    "Send IC Document",
    "IC Status",
    "IC Direction",
    "Prepayment _",
    "Compress Prepayment",
    "Prepayment Due Date",
    "Prepmt_ Pmt_ Discount Date",
    "Prepmt_ Payment Terms Code",
    "Prepmt_ Payment Discount _",
    "Job Queue Status",
    "Job Queue Entry ID",
    "Incoming Document Entry No_",
    "Dimension Set ID",
    "Authorization Required",
    "Credit Card No_",
    "Doc_ No_ Occurrence",
    "Sell-to Contact No_",
    "Bill-to Contact No_",
    "Responsibility Center",
    "Shipping Advice",
    "Posting from Whse_ Ref_",
    "Requested Delivery Date",
    "Promised Delivery Date",
    "Shipping Time",
    "Outbound Whse_ Handling Time",
    "Shipping Agent Service Code",
    receive,
    "Return Receipt No_ Series",
    "Last Return Receipt No_",
    "Allow Line Disc_",
    "Get Shipment Used",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_nl_sales_header") }}
