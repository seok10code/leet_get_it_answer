select name as Customers 
from Customers
where customers.id not in (select customerId from Orders)
