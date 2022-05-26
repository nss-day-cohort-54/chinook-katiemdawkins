SELECT InvoiceId, COUNT(InvoiceLineId)
    
From InvoiceLine 

GROUP BY InvoiceId