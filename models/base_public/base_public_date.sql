with source as (

    select * from {{ source('public', 'date') }}

),

renamed as (

    select
        dateid,
        caldate,
        day,
        week,
        month,
        qtr,
        year,
        holiday

    from source

)

select * from renamed
