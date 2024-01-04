{{ config(materialized="table") }}

select
    "timestamp",
    no_,
    "No_ 2",
    description,
    "Search Description",
    "Description 2",
    "Base Unit of Measure",
    "Price Unit Conversion",
    "Type",
    "Inventory Posting Group",
    "Shelf No_",
    "Item Disc_ Group",
    "Allow Invoice Disc_",
    "Statistics Group",
    "Commission Group",
    "Unit Price",
    "Price_Profit Calculation",
    "Profit _",
    "Costing Method",
    "Unit Cost",
    "Standard Cost",
    "Last Direct Cost",
    "Indirect Cost _",
    "Cost is Adjusted",
    "Allow Online Adjustment",
    "Vendor No_",
    "Vendor Item No_",
    "Lead Time Calculation",
    "Reorder Point",
    "Maximum Inventory",
    "Reorder Quantity",
    "Alternative Item No_",
    "Unit List Price",
    "Duty Due _",
    "Duty Code",
    "Gross Weight",
    "Net Weight",
    "Units per Parcel",
    "Unit Volume",
    durability,
    "Freight Type",
    "Tariff No_",
    "Duty Unit Conversion",
    "Country_Region Purchased Code",
    "Budget Quantity",
    "Budgeted Amount",
    "Budget Profit",
    blocked,
    "Last Date Modified",
    "Price Includes VAT",
    "VAT Bus_ Posting Gr_ (Price)",
    "Gen_ Prod_ Posting Group",
    picture,
    "Country_Region of Origin Code",
    "Automatic Ext_ Texts",
    "No_ Series",
    "Tax Group Code",
    "VAT Prod_ Posting Group",
    reserve,
    "Global Dimension 1 Code",
    "Global Dimension 2 Code",
    "Stockout Warning",
    "Prevent Negative Inventory",
    "Application Wksh_ User ID",
    "Assembly Policy",
    gtin,
    "Default Deferral Template Code",
    "Low-Level Code",
    "Lot Size",
    "Serial Nos_",
    "Last Unit Cost Calc_ Date",
    "Rolled-up Material Cost",
    "Rolled-up Capacity Cost",
    "Scrap _",
    "Inventory Value Zero",
    "Discrete Order Quantity",
    "Minimum Order Quantity",
    "Maximum Order Quantity",
    "Safety Stock Quantity",
    "Order Multiple",
    "Safety Lead Time",
    "Flushing Method",
    "Replenishment System",
    "Rounding Precision",
    "Sales Unit of Measure",
    "Purch_ Unit of Measure",
    "Time Bucket",
    "Reordering Policy",
    "Include Inventory",
    "Manufacturing Policy",
    "Rescheduling Period",
    "Lot Accumulation Period",
    "Dampener Period",
    "Dampener Quantity",
    "Overflow Level",
    "Manufacturer Code",
    "Item Category Code",
    "Created From Nonstock Item",
    "Product Group Code",
    "Service Item Group",
    "Item Tracking Code",
    "Lot Nos_",
    "Expiration Calculation",
    "Special Equipment Code",
    "Put-away Template Code",
    "Put-away Unit of Measure Code",
    "Phys Invt Counting Period Code",
    "Last Counting Period Update",
    "Use Cross-Docking",
    "Next Counting Start Date",
    "Next Counting End Date",
    "Routing No_",
    "Production BOM No_",
    "Single-Level Material Cost",
    "Single-Level Capacity Cost",
    "Single-Level Subcontrd_ Cost",
    "Single-Level Cap_ Ovhd Cost",
    "Single-Level Mfg_ Ovhd Cost",
    "Overhead Rate",
    "Rolled-up Subcontracted Cost",
    "Rolled-up Mfg_ Ovhd Cost",
    "Rolled-up Cap_ Overhead Cost",
    "Order Tracking Policy",
    critical,
    "Common Item No_",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_item") }}
