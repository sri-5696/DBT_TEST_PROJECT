{% macro audit_column() %}

CURRENT_TIMESTAMP() AS load_timestamp,
CURRENT_USER() AS loaded_by

{% endmacro %}