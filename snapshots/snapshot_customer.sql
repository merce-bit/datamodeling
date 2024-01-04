{% snapshot snapshot_customer %}

--{% set new_schema = target.schema + '_snapshot'%}

{{
   config(


        target_schema='raw',      
    strategy='check',      
    unique_key='no_',      
    check_cols=['load_timestamp'] 
   )
}}

select * from {{ source("raw", "nav9_sl_customer") }}

{% endsnapshot %}