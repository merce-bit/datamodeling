{{ config(materialized="table") }}

select
    "timestamp",
    code,
    "Name",
    "Internet Address",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_shipping_agent") }}
