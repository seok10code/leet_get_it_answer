-- # Write your MySQL query statement below
with cte as
(
select distinct actor_id, director_id, count(director_id) cnt from actordirector group by actor_id, director_id
)select actor_id, director_id from cte where cnt>=3
