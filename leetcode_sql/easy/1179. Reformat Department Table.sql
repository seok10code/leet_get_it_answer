-- # Write your MySQL query statement below
select 
id,
sum(case month when 'Jan' then revenue Else null end) as Jan_Revenue,
sum(case month when 'Feb' then revenue Else null end) as Feb_Revenue,
sum(case month when 'Mar' then revenue Else null end) as Mar_Revenue ,
sum(case month when 'Apr' then revenue Else null end) as Apr_Revenue ,
sum(case month when 'May' then revenue Else null end) as May_Revenue ,
sum(case month when 'Jun' then revenue Else null end) as Jun_Revenue ,
sum(case month when 'Jul' then revenue Else null end) as Jul_Revenue ,
sum(case month when 'Aug' then revenue Else null end) as Aug_Revenue ,
sum(case month when 'Sep' then revenue Else null end) as Sep_Revenue ,
sum(case month when 'Oct' then revenue Else null end) as Oct_Revenue ,
sum(case month when 'Nov' then revenue Else null end) as Nov_Revenue ,
sum(case month when 'Dec' then revenue Else null end) as Dec_Revenue 
from Department
group by id
order by id
