with source as (

    select * from {{ source('public', 'venue') }}

),

renamed as (

    select
        venueid,
        venuename,
        venuecity,
        venuestate,
        venueseats

    from source

)

select * from renamed
