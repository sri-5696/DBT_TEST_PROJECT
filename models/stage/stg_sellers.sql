{{
    config(
        materialized = 'view',
        database = 'DBT_TEST',
        on_schema_change = 'append_new_columns'
    )
}}
SELECT
SELLER_ID,
SELLER_NAME,
SELLER_TYPE,
{{ concat('SELLER_NAME','SELLER_TYPE') }} AS full_name,
COUNTRY,
CONTACT_EMAIL,
IS_APPROVED,
ONBOARDED_AT,
UPDATED_AT
FROM {{ source('DBT_TEST', 'sellers') }}
where COUNTRY = 'India'



