SELECT
"code"                        as "CODE"
,md5 (concat("code", "Name")) as "_surrogate_key"
,"Name"                       as "NAME"
,"E-Mail"                     as "E-MAIL"
,"Phone No_"                  as "PHONE NO"
,"Job Title"                  as "JOB TITLE"

from {{source('raw', 'nav9_sl_salesperson_purchaser')}} 


