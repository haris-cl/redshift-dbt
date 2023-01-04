select
    date_part('year', a.saletime) as year,
    date_part('quarter', a.saletime) as quarter,
    b.eventname,
    count(a.salesid) as sales_made,
    sum(a.pricepaid) as sales_revenue,
    sum(a.commission) as staff_commission,
    staff_commission / sales_revenue as commission_pcnt
from {{ref('base_public_sales')}} a
left join {{ref('base_public_event')}} b on a.eventid = b.eventid
group by
    year,
    quarter,
    b.eventname
