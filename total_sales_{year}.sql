--What are the respective total sales for each of those years(2009 & 2011)?
--HINT: SUM

SELECT 
    SUM(CASE WHEN InvoiceDate LIKE '2009%' THEN Total END) AS SalesIn2009,
    SUM(CASE WHEN InvoiceDate LIKE '2011%' THEN Total END) AS SalesIn2011,
    SUM(CASE WHEN InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%' THEN Total END) AS TotalSales
FROM Invoice;
