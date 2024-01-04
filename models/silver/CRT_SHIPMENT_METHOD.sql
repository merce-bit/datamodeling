{{ config(materialized="table") }}

select 
"timestamp", 
code, 
description, 
load_timestamp, 
source_system

from {{ source("raw", "nav9_sl_shipment_method") }}
