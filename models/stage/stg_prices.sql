{{
    config(
        materialized = 'table',
        database = 'DBT_TEST',
        on_schema_change = 'append_new_columns',
        post_hook="delete from {{ this }} where part_id='P0001'"
    )
}}
SELECT
PRICE_ID,
PART_ID,
SELLER_ID,
UNIT_PRICE,
CURRENCY,
EFFECTIVE_FROM,
EFFECTIVE_TO,
CREATED_AT
FROM {{ source('DBT_TEST', 'part_prices') }}



