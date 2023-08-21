--Provide a query that shows all Invoices. The resultant table should include:
    --InvoiceId
    --The total number of line items on each invoice

SELECT 
    I.InvoiceId, 
    COUNT(IL.InvoiceLineId) AS NumberOfLineItems
FROM Invoice I
JOIN InvoiceLine IL ON Il.InvoiceId = I.InvoiceId
GROUP BY I.InvoiceId;