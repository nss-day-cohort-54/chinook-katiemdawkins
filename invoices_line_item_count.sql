-- Provide a query that shows all Invoices. 
-- The resultant table should include:
-- InvoiceId
-- The total number of line items 
-- on each invoice

SELECT 
    i.invoiceId,
    il.invoiceLineId,
    COUNT (*)
From InvoiceLine il 
JOIN Invoice i
    ON i.invoiceid = il.invoiceid 
GROUP BY i.Invoiceid