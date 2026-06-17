{{
    config(
        materialized = 'view',
        database = 'DBT_TEST',
        on_schema_change = 'append_new_columns'
    )
}}
SELECT
AVAILABILITY_ID,
PART_ID,
SELLER_ID,
AVAILABLE_QTY,
LEAD_TIME_DAYS,
AVAILABILITY_STATUS,
CHECKED_AT,
REGION
{{ audit_column() }}
FROM {{ source('DBT_TEST', 'market_availability') }}
where REGION = 'Asia'



