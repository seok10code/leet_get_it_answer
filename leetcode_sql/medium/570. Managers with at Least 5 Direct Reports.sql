# Write your MySQL query statement below
with cte as (
    select a.* from employee a left join employee b on a.id=b.managerId 
)select name from cte group by id having count(id) >=5
