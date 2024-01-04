{% snapshot snapshot_customer %}

--{% set new_schema = target.schema + '_snapshot'%}

{{
   config(

   target_database='dwh',
    target_schema='raw',
    unique_key='no_',

    strategy='timestamp', 
    updated_at='load_timestamp'
   )
}}

select * from {{ source("raw", "nav9_sl_customer") }}

{% endsnapshot %}