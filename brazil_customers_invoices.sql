--Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
--Customer's full name
--Invoice Id,
--Date of the invoice
--Billing country

Select
    C.FirstName || ' ' || C.LastName AS FullName,
    I.InvoiceId,
    I.InvoiceDate,
    I.BillingCountry
FROM INVOICE I
JOIN CUSTOMER C ON C.customerId = I.customerId
WHERE C.Country = 'Brazil';