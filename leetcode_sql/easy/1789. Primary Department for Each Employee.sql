-- # Write your MySQL query statement below
with cte as (
select 
*,
rank() over (partition by employee_id order by primary_flag) rk
from employee
)select 
employee_id,
department_id 
from cte 
where rk <=1
group by employee_id having count(employee_id)<=1