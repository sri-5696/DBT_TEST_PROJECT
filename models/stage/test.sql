{{ config(materialized='view') }}

{{ duplicate('part_id', source('DBT_TEST', 'parts')) }}