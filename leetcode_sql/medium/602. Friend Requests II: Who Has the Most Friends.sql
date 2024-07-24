-- # Write your MySQL query statement below
with cte as (
    select requester_id as id from requestAccepted
    union all
    select accepter_id as id from requestAccepted
)select id, count(id)  num from cte group by id order by num desc limit 1

