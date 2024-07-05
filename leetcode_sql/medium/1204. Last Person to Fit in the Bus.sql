-- # Write your MySQL query statement below
WITH RECURSIVE cte AS
(
    select 
    turn,
    person_name,
    weight as total
    from queue
    where turn=1

    union all 
    
    select  
    r.turn,
    r.person_name,
    d.total+r.weight
    from queue r join cte d on d.turn+1=r.turn
    where d.total+r.weight<=1000
)
SELECT person_name  FROM cte order by total desc limit 1;