/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/
{{ create_table() }}

with
    source_data as (

        select shortname, 
        count(distinct exchange) as total_exchanges

        from `trading-data-378602.Finance.Tesla_Finance`

    )

select *
from source_data
