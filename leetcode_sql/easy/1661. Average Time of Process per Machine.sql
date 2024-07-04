with cte as (
    select
 *, 
 count(*) cnt, 
 if(activity_type='start', -round(sum(timestamp),3), round(sum(timestamp),3)) processing_time  
 from activity
 group by machine_id, activity_type
)select machine_id , round(sum(processing_time)/cnt,3) processing_time from cte 
group by machine_id
