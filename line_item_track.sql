SELECT
    i.InvoiceLineId,
    t.name
FROM InvoiceLine i 
JOIN Track t
    on i.TrackId = t. TrackId