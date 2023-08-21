-- Provide a query only showing the Customers from Brazil.

SELECT 
    CustomerId,
    FirstName,
    LastName,
    Company,
    Address,
    City,
    State,
    Country,
    PostalCode,
    Phone,
    Fax,
    Email,
    SupportRepId
FROM CUSTOMER
WHERE Country = 'Brazil';