{{
    config(
        materialized = 'view',
        database = 'DBT_TEST',
        on_schema_change = 'append_new_columns'
    )
}}
SELECT
PO_ID,
PART_ID,
SELLER_ID,
PO_DATE,
QTY_ORDERED,
QTY_RECEIVED,
UNIT_PRICE,
PO_STATUS,
EXPECTED_DELIVERY,
CREATED_AT
FROM {{ source('DBT_TEST', 'purchase_orders') }}
where PO_STATUS = 'OPEN'



