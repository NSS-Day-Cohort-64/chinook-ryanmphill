--Which sales agent made the most in sales in 2009?

--HINT: Use the MAX function on a subquery.


SELECT SalesRep, MAX(TotalSales) FROM (
    SELECT 
        E.FirstName || ' ' || E.LastName AS SalesRep,
        SUM(I.Total) AS TotalSales
    FROM Employee E
    LEFT JOIN CUSTOMER C ON E.EmployeeId = C.SupportRepId
    LEFT JOIN INVOICE I ON C.CustomerId = I.CustomerId
    WHERE E.Title LIKE '%Sales%' AND Title LIKE '%Agent%'
    AND I.InvoiceDate LIKE '2009%'
    GROUP BY SalesRep
);