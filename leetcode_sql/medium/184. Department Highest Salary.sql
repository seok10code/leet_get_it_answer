with cte as (
    select 
    department.name Department, 
    employee.name Employee, 
    employee.salary Salary, 
    rank() over(partition by department.name order by employee.salary desc) ranking 
    from employee 
    left join department 
    on employee.departmentId = department.id

)select Department, Employee, Salary from cte where ranking=1