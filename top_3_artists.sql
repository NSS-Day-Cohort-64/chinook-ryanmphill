--Provide a query that shows the top 3 best selling artists.
SELECT 
    Ar.Name AS ArtistName,
    SUM(IL.Quantity) AS TracksSold
FROM InvoiceLine IL 
JOIN Track T ON T.TrackId = IL.TrackId
JOIN Album Al ON T.AlbumId = Al.AlbumId
JOIN Artist Ar ON Ar.ArtistId = Al.ArtistId
GROUP BY ArtistName
ORDER BY TracksSold DESC 
LIMIT 3;