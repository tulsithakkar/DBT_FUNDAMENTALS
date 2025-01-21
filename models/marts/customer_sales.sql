select
    c.customer_id,
    c.customer_name,
    c.email,
    sum(o.order_amount) as total_sales
from {{ ref('stg_customers') }} c
left join {{ ref('stg_orders') }} o
    on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name, c.email
