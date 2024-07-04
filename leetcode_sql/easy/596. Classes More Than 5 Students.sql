-- # Write your MySQL query statement below
select a.class from (select class, count(student) as cnt from Courses group by class) a where cnt >= 5
