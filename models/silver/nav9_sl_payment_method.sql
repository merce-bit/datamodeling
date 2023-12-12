{{ config(materialized="table") }}

select
    "timestamp",
    code,
    description,
    "Bal_ Account No_",
    "Pmt_ Export Line Definition",
    "Bank Data Conversion Pmt_ Type",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_payment_method") }}
