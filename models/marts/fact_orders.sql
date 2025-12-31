with orders as  (
    select * from {{ ref ('stg_jaffle_shop__orders' )}}
),

payments as (
    select * from {{ ref ('stg_stripe__payments') }}
),


select
    o.order_id,
    o.customer_id,
    p.amount,
    p.status
from orders as o 
left join payments as p using (order_id)