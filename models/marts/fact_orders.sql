select
    o.order_id,
    c.customer_id,
    p.amount
from {{ ref('stg_jaffle_shop__orders') }} as o
join {{ ref('stg_jaffle_shop__customers') }} as c on c.customer_id = o.customer_id
join {{ ref('stg_stripe__payments') }} as p on o.order_id = p.order_id