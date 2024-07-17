with cte as (
    select 
    'Low Salary' category,
    sum(income<20000 ) accounts_count
    from accounts

    union all

    select 
    'Average Salary' category,
    sum(income>=20000 and income <=50000 ) accounts_count
    from accounts

    union all

    select 
    'High Salary' category,
    sum(income >50000 ) accounts_count
    from accounts
)select * from cte



-- select cnt category, count(cnt) accounts_count from cte
--  group by cnt 