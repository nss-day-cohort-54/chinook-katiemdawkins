-- Provide a query that shows the 
-- most purchased track(s) of 2013.

SELECT
    t.name,
    SUM(i.total) as PurchaseAmount
FROM track t 
JOIN InvoiceLine il 
    ON t.trackID = il.trackid
JOIN Invoice i 
    ON il.invoiceId = i.invoiceId
WHERE i.invoicedate LIKE '2013%'
GROUP BY t.Name
ORDER BY PurchaseAmount DESC
