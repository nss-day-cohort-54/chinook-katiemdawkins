SELECT BillingCountry, COUNT(InvoiceLineId)
    
From Invoice i

JOIN InvoiceLine il
    ON il.InvoiceId = i.invoiceID
GROUP BY BillingCountry 