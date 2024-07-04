with cte as (
    select a.*, b.name reportingname, b.age reportingage from employees a left join employees b on a.employee_id=b.reports_to where b.age is not null
)select
employee_id
,name
,count(employee_id) reports_count
,round(avg (reportingage),0) average_age 
from cte
group by employee_id, name
order by employee_id

