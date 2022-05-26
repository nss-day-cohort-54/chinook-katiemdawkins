-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.

WITH CountrySpentMost AS(
SELECT
    i.BillingCountry,
    SUM(i.total) as total
FROM Invoice i 
GROUP BY i.BillingCountry
)

SELECT
    BillingCountry
FROM CountrySpentMost
WHERE total = (SELECT MAX(total) FROM CountrySpentMost)