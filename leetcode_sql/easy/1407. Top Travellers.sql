-- # Write your MySQL query statement below
with cte as (
select user_id, sum(distance) travelled_distance from rides group by user_id
 )select users.name, ifnull(travelled_distance, 0) travelled_distance from users left join cte on users.id=cte.user_id 
 order by travelled_distance desc, users.name 
