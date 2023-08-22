--Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    IL.TrackId,
    T.Name,
    SUM(IL.Quantity) AS NumberOfPurchases
FROM InvoiceLine IL
JOIN Track T ON IL.TrackId = T.TrackId
GROUP BY IL.TrackId
ORDER BY NumberOfPurchases DESC LIMIT 5;
