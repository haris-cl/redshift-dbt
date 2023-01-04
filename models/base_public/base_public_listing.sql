with source as (

    select * from {{ source('public', 'listing') }}

),

renamed as (

    select
        listid,
        sellerid,
        eventid,
        dateid,
        numtickets,
        priceperticket,
        totalprice,
        listtime

    from source

)

select * from renamed
