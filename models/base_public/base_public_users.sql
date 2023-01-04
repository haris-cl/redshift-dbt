with source as (

    select * from {{ source('public', 'users') }}

),

renamed as (

    select
        userid,
        username,
        firstname,
        lastname,
        city,
        state,
        email,
        phone,
        likesports,
        liketheatre,
        likeconcerts,
        likejazz,
        likeclassical,
        likeopera,
        likerock,
        likevegas,
        likebroadway,
        likemusicals

    from source

)

select * from renamed
