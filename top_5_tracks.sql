

SELECT
    t.name,
    SUM(i.total) as PurchaseAmount
FROM track t 
JOIN InvoiceLine il 
    ON t.trackID = il.trackid
JOIN Invoice i 
    ON il.invoiceId = i.invoiceId
GROUP BY t.Name
ORDER BY PurchaseAmount DESC
LIMIT 5