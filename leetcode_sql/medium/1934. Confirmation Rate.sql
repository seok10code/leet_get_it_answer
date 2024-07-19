-- # Write your MySQL query statement below
with cte as(
 select user_id, round(sum(tt)/count(user_id),2) rate
from (select 
*,
 case when action='timeout' then  0
 else 1 end tt
 from confirmations) a
 group by user_id )
 select signups.user_id, ifnull(cte.rate,0) confirmation_rate from signups 
 left join cte on cte.user_id=signups.user_id


