{% snapshot snapshot_customer %}

{{
    config(
    target_database='dwh',
    target_schema='dev_merce',
    unique_key='no_',
 
    strategy='timestamp',
    updated_at='load_timestamp'
    )
}}
 
 
SELECT *

,md5("no_" || "Last Date Modified") as "customer_key_hist"
 
from {{source("raw", "nav9_sl_customer")}}
 
{% endsnapshot %}
