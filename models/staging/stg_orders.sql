select
    order_id,
    customer_id,
    order_date,
    order_amount
from {{ ref('sample_orders') }}
