SELECT *
 , CASE
    WHEN dbt_valid_to IS NULL THEN 'True'
    ELSE 'False'
  END AS "Is_current"
FROM "dev_merce"."snapshot_customer"  
