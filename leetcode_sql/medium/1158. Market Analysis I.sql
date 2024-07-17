-- # Write your MySQL query statement below
with cte as (
    select 
    order_date,
    item_id,
    buyer_id
    from orders 
    where order_date between '2019-01-01' and '2019-12-31'
)select 
user_id buyer_id,
join_date,
count(item_id) orders_in_2019
from users left join cte on users.user_id=cte.buyer_id
group by user_id