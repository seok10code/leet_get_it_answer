select FirstName, lastName, City, State from Person
left join Address on Person.personId = Address.personId;
