{{ config(materialized="table") }}

select
    "timestamp",
    code,
    "Name",
    "Commission _",
    "E-Mail",
    "Search E-Mail",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_salesperson_purchaser") }}
