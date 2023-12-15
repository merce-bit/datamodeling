
select 
"Sell-to Customer No_" as "CUSTOMER ID"
,"Ship-to Code" 
,"Shipment Method Code"
, "Location Code"
,"Currency Code"
,"Language Code"
, "Salesperson Code"
,"Shipping No_"
, "Posting No_"
, "Last Shipping No_"
, "Last Posting No_"
	



from {{source('raw', 'nav9_nl_sales_header')}} 
