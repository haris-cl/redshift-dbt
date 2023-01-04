select *
from
(
    select
        *,
        rank() over (partition by year, quarter order by sales_revenue desc) as row_num
    from {{ref('rpt_finance_qtr_total_sales_by_event')}}
)
where row_num <= 3

