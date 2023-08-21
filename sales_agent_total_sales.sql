--Provide a query that shows total sales made by each sales agent. The resultant table should include:
    --Employee full name
    --Total sales for each employee (all time)

SELECT 
    E.FirstName || ' ' || E.LastName AS SalesRep,
    COUNT(DISTINCT C.FirstName) AS NumberOfCustomers,
    SUM(I.Total) AS TotalSales,
    COUNT(I.InvoiceId) AS InvoiceCount
FROM Employee E
LEFT JOIN CUSTOMER C ON E.EmployeeId = C.SupportRepId
LEFT JOIN INVOICE I ON C.CustomerId = I.CustomerId
WHERE E.Title LIKE '%Sales%' AND Title LIKE '%Agent%'
GROUP BY SalesRep;