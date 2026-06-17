{{
    config(
        materialized = 'view',
        database = 'DBT_TEST',
        on_schema_change = 'append_new_columns'
    )
}}
SELECT
PART_ID,
{{ lower_1('part_name') }} as part_name,
PART_CATEGORY,
MACHINE_TYPE,
PART_NUMBER,
UNIT_OF_MEASURE,
IS_ACTIVE,
CREATED_AT,
UPDATED_AT
FROM {{ source('DBT_TEST', 'parts') }}
where machine_type = '{{ var("machine_type") }}'




