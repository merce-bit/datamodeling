with customer as (

    select 
    "CUSTOMER ID"
    , "Name"
    , address
    , "Address 2"
    , city
    , contact
    , "Phone No_"
    , "Territory Code"


    from {{ ref('DIM_CUSTOMER') }}

  
)


    Select  
    sale."CUSTOMER ID"
    ,sale."Ship-to Code" 
    ,sale."Shipment Method Code"
    ,sale."Location Code"
    ,sale."Currency Code"
    ,sale."Language Code"
    ,cust."Name" as "Customer Name"

    from {{ ref('FCT_SALES_HEADER') }} as sale

        left join customer as cust
        on sale."CUSTOMER ID" = cust."CUSTOMER ID"