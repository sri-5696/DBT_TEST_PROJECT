{% macro duplicate(col1,tab1) %}
 
 select {{col1}},count(*) as dup_count
 from {{tab1}} group by {{col1}} having count(*) > 1
  {% endmacro %}