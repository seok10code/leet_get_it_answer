-- # Write your MySQL query statement below
with cte as(
select 
product_id,
new_price,
change_date,
rank() over (partition by product_id order by change_date desc) a
 from products where change_date <='2019-08-16' 
)select product_id, new_price price from cte where a=1
union
select 
product_id,
10 price
 from products where change_date >'2019-08-16' and product_id not in (select product_id from products where change_date <='2019-08-16')