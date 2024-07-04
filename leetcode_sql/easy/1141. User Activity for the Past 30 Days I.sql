-- # Write your MySQL query statement below
select activity_date 'day', count(distinct user_id) active_users  
from activity group by activity_date having min(activity_date) >= '2019-06-28' and max(activity_date) <='2019-07-27'
