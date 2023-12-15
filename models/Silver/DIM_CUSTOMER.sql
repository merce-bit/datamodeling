SELECT 
   no_ as "CUSTOMER ID"
, "Name"
, address
, "Address 2"
, city
, contact
, "Phone No_"
, "Territory Code"
, "Chain Name"
, "Customer Posting Group"
, "Currency Code"
, "Customer Price Group"
, "Language Code"
, "Statistics Group"
, "Payment Terms Code"
, "Fin_ Charge Terms Code"
, "Salesperson Code"
, "Shipment Method Code"
, "Shipping Agent Code"
, "Place of Export"
, "Invoice Disc_ Code"
, "Customer Disc_ Group"
, "Country_Region Code"
from {{source('raw', 'nav9_sl_customer')}} 