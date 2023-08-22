--Which country's customers spent the most?
    --HINT: Use the MAX function on a subquery.
SELECT 
    Country,
    MAX(TotalSales)
FROM (
    SELECT
        BillingCountry AS Country,
        SUM(Total) AS TotalSales
    FROM Invoice
    GROUP BY BillingCountry
);