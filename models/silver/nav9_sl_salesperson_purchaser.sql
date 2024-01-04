{{ config(materialized="table") }}
select
    "timestamp",
    code,
    "Name",
    "Commission _",
    "Privacy Blocked",
    "Global Dimension 1 Code",
    "Global Dimension 2 Code",
    "E-Mail",
    "Phone No_",
    "Job Title",
    "Search E-Mail",
    "E-Mail 2",
    load_timestamp,
    source_system


from {{ source("raw", "nav9_sl_salesperson_purchaser") }}
