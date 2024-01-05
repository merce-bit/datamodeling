{{ config(materialized="table") }}

select
    "timestamp",
    code,
    "Last Date Modified",
    "Last Date Adjusted",
    "Unrealized Gains Acc_",
    "Realized Gains Acc_",
    "Unrealized Losses Acc_",
    "Realized Losses Acc_",
    "Invoice Rounding Precision",
    "Amount Rounding Precision",
    "Unit-Amount Rounding Precision",
    description,
    "Amount Decimal Places",
    "Unit-Amount Decimal Places",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_currency") }}
