-- # Write your MySQL query statement below
with cte as (
    select player_id, min(event_date) first_login_date from activity group by player_id
)
select 
round(sum(datediff(activity.event_date,cte.first_login_date)=1) /(select count(distinct(player_id)) from activity), 2) fraction 
from cte 
left join activity 
on activity.player_id=cte.player_id
