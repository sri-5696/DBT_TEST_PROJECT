{% snapshot time %}
{{
config(
    target_schema='DBT_TEST',
    unique_key='PART_ID',
    strategy='timestamp',
    updated_at='updated_at'
)
}}

select *
from {{ source('DBT_TEST','parts') }}
{% endsnapshot %}