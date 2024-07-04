-- # Write your MySQL query statement below
select 
*, 
if((abs(x) + abs(y)> abs(z)) and
(abs(x) + abs(z)> abs(y)) and
(abs(z) + abs(y)> abs(x)), 'Yes', 'No') as triangle from triangle 
