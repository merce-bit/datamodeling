{{ config(materialized="table") }}

select
    "timestamp",
    "Item No_",
    "Sales Type",
    "Starting Date",
    "Currency Code",
    "Unit of Measure Code",
    "Unit Price",
    "Allow Invoice Disc_",
    "Ending Date",
    "Allow Line Disc_",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_sales_price") }}
