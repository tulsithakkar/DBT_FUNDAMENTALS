select
    customer_id,
    lower(customer_name) as customer_name,
    lower(email) as email,
    created_at
from {{ ref('sample_customers') }}
