--Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
--Invoice Total
--Customer Name
--Customer Country
--Sale Agent full name

SELECT 
    I.Total AS InvoiceTotal,
    C.FirstName || ' ' || C.LastName AS CustomerName,
    C.Country AS CustomerLocation,
    E.FirstName || ' ' || E.LastName AS SalesAgentName
FROM INVOICE I
JOIN CUSTOMER C ON C.CustomerId = I.CustomerId
JOIN EMPLOYEE E ON E.EmployeeId = C.SupportRepId;