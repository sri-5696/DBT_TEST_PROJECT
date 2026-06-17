{% macro concat(column1, column2) %}

CONCAT({{ column1 }}, ' ', {{ column2 }})

{% endmacro %}