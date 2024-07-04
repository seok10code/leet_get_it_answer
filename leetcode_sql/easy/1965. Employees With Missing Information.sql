-- # Write your MySQL query statement below
with cte as(select employees.employee_id from employees left join salaries on employees.employee_id=salaries.employee_id
where salaries.salary is null
union all
select salaries.employee_id from employees right join salaries on employees.employee_id=salaries.employee_id
where employees.name is null)select * from cte order by employee_id
