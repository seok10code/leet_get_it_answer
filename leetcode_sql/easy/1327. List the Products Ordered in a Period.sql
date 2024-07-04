with cte as(
    select
        product_id ,
        order_date , 
        sum(unit) unit
    from orders 
    where order_date between '2020-02-01' and '2020-02-29'  
    group by product_id
)select products.product_name, cte.unit from cte left join products
on products.product_id=cte.product_id where unit >=100
