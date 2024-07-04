-- # Write your MySQL query statement below
with temp as (select emp_id, event_day as day, (out_time-in_time) as total_time from Employees )
select day, emp_id, sum(total_time) as total_time from temp group by day, emp_id
