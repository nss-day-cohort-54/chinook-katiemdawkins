-- Provide a query that shows 
-- the top 3 best selling artists.

SELECT
    a.name,
    SUM(i.total) as PurchaseAmount
FROM track t
JOIN Album al 
    ON al.albumid = t.albumid
JOIN Artist a 
    ON a.artistid = al.artistId
JOIN InvoiceLine il 
    ON t.trackID = il.trackid
JOIN Invoice i 
    ON il.invoiceId = i.invoiceId
GROUP BY a.name
ORDER BY PurchaseAmount DESC
LIMIT 3