-- # Write your MySQL query statement below
with cte as (
    select 
    product.product_key,
    customer.customer_id
    from product left join customer on product.product_key=customer.product_key
)select customer_id from cte 
group by customer_id having count(distinct product_key)=(select count(distinct product_key) from product)
order by customer_id