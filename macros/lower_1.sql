{% macro lower_1(column) %}
lower(trim({{ column }}))
{% endmacro %}