-- # Write your MySQL query statement below
select name, population, area from World as a where a.area >= 3000000  or a.population >= 25000000 
