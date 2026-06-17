{{
    config(
        materialized = 'view',
        database = 'DBT_TEST',
        on_schema_change = 'append_new_columns'
    )
}}
SELECT
INVOICE_ID,
PART_ID,
SELLER_ID,
INVOICE_DATE,
QTY_INVOICED,
UNIT_PRICE,
TOTAL_AMOUNT,
CURRENCY,
INVOICE_STATUS,
CREATED_AT
FROM {{ source('DBT_TEST', 'invoices') }}




