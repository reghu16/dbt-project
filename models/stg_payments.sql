select
    id as customer_id,
    orderid as order_id,
    sum (amount) as lifetime_value
from raw.stripe.payment
group by id, orderid
order by id