{% macro price_null_data_check(table_name, column_name) %}

SELECT *
FROM {{ table_name }}
WHERE {{ column_name }} IS NULL

{% endmacro %}