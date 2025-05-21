{% macro create_table() %}
    {{ config(materialized = 'table') }}
{% endmacro %}