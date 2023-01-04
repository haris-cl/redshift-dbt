select
    a.catid,
    a.catgroup,
    a.catname,
    a.catdesc,
    b.catdesc_secondary
from {{ref('base_public_category')}} a
left join {{ref('mnl_category_desc')}} b on a.catname = b.catname
