-- Provide a query that shows the most 
-- purchased Media Type.

SELECT
    m.name,
    SUM(i.total) as PurchaseAmount
FROM track t
JOIN MediaType m 
    ON t.mediatypeid = m.mediatypeid
JOIN InvoiceLine il 
    ON t.trackID = il.trackid
JOIN Invoice i 
    ON il.invoiceId = i.invoiceId
GROUP BY m.name
ORDER BY PurchaseAmount DESC
LIMIT 1