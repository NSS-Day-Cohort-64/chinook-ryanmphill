--Provide a query that shows the total number of invoices per country.
--HINT: GROUP BY

SELECT BillingCountry AS Country, COUNT(*) AS NumberOfInvoices
FROM Invoice
GROUP BY BillingCountry;