--Provide a query that shows each Invoice line item, with the name of the track that was purchase, 
--and the name of the artist.

SELECT
I.InvoiceLineId,
I.InvoiceId,
I.TrackId,
I.UnitPrice,
I.Quantity,
T.Name AS PurchasedTrack,
AR.Name AS ArtistName
FROM InvoiceLine I
JOIN Track T ON T.TrackId = I.TrackId
JOIN Album AL ON AL.AlbumId = T.AlbumId
JOIN Artist AR ON AR.ArtistId = AL.ArtistId;