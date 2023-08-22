--Provide a query that shows the total sales per country.

SELECT
BillingCountry AS Country,
SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry;