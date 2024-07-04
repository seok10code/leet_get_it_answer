with cte as
(
select company.*, orders.sales_id from company left join orders on company.com_id=orders.com_id where company.name ='RED'
)
select salesperson.name from salesperson left join cte on salesperson.sales_id=cte.sales_id 
where cte.name is null
