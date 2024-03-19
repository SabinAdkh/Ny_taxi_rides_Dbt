with

source as (

    select * from {{ source('staging', 'green_taxi_data') }}
    
)

select *, {{ get_payment_type_description(payment_type) }} as payment_type_description from source