-- # Write your MySQL query statement below
with cte as (
    select query_name, position, rating, (rating/position) as temp from queries 
    where query_name is not null
) select query_name, 
round(sum(temp)/count(query_name),2) quality , 
round(sum(case when rating<3 then 1 else 0 end)/count(query_name)*100,2) poor_query_percentage  
 from cte group by query_name 
