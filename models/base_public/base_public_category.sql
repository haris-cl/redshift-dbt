with source as (

    select * from {{ source('public', 'category') }}

),

renamed as (

    select
        catid,
        catgroup,
        catname,
        catdesc

    from source

)

select * from renamed
