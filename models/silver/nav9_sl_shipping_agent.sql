{{ config(materialized="table") }}

select
    "timestamp",
    code,
    "Name",
    "Internet Address",
    "Account No_",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_shipping_agent") }}
