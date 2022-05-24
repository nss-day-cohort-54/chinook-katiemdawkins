Select 
    c.FirstName,
    c.LastName,
    i.BillingCountry,
    i.InvoiceId,
    i.InvoiceDate
FROM Customer c
JOIN Invoice i 
    ON i.CustomerId = c.CustomerId
WHERE i.BillingCountry = "Brazil"