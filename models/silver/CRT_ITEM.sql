{{ config(materialized="table") }}

select
    "timestamp",
    no_,
    description,
    "Search Description",
    "Base Unit of Measure",
    "Inventory Posting Group",
    "Shelf No_",
    "Item Disc_ Group",
    "Unit Price",
    "Price_Profit Calculation",
    "Profit _",
    "Costing Method",
    "Unit Cost",
    "Standard Cost",
    "Last Direct Cost",
    "Cost is Adjusted",
    "Allow Online Adjustment",
    "Vendor No_",
    "Vendor Item No_",
    "Lead Time Calculation",
    "Reorder Point",
    "Reorder Quantity",
    "Gross Weight",
    "Net Weight",
    "Unit Volume",
    "Tariff No_",
    "Last Date Modified",
    "Gen_ Prod_ Posting Group",
    "Low-Level Code",
    "Lot Size",
    "Last Unit Cost Calc_ Date",
    "Rolled-up Material Cost",
    "Rolled-up Capacity Cost",
    "Scrap _",
    "Discrete Order Quantity",
    "Minimum Order Quantity",
    "Maximum Order Quantity",
    "Safety Stock Quantity",
    "Order Multiple",
    "Flushing Method",
    "Replenishment System",
    "Rounding Precision",
    "Sales Unit of Measure",
    "Purch_ Unit of Measure",
    "Time Bucket",
    "Reordering Policy",
    "Include Inventory",
    "Manufacturing Policy",
    "Service Item Group",
    "Item Tracking Code",
    "Put-away Unit of Measure Code",
    "Last Counting Period Update",
    "Use Cross-Docking",
    "Next Counting Start Date",
    "Next Counting End Date",
    "Routing No_",
    "Production BOM No_",
    "Single-Level Material Cost",
    "Single-Level Capacity Cost",
    load_timestamp,
    source_system

from {{ source("raw", "nav9_sl_item") }}
