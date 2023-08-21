--Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT
I.InvoiceLineId,
I.InvoiceId,
I.TrackId,
I.UnitPrice,
I.Quantity,
T.Name AS PurchasedTrack
FROM InvoiceLine I
JOIN Track T ON T.TrackId = I.TrackId;