select email from (
select email, count(email) as num from Person group by email
) as a where num >1
