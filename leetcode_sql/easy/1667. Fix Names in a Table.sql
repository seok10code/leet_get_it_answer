
select user_id, concat(upper(substr(name,1,1)), lower(substr(name,2))) name from users order by user_id
