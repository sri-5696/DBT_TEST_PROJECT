{% snapshot ref_snap %}
{{
config(
    target_schema='DBT_TEST',
    unique_key='INVOICE_ID',
    strategy='check',
    check_cols=['UNIT_PRICE', 'QTY_INVOICED', 'INVOICE_DATE']
)
}}

select *
from {{ ref('stg_invoices') }}
{% endsnapshot %}


