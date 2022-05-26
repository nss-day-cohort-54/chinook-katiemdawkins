--Which sales agent made the most in sales in 2009?
--HINT: Use the MAX function on a subquery.

WITH maxTotal AS (
SELECT 
    SUM(i.total) AS total,
    e.firstName,
    e.lastName
FROM Employee e 
JOIN CUSTOMER c 
    ON c.supportRepId = e.employeeid 
JOIN Invoice i 
    ON c.customerId = i.customerid
WHERE i.invoicedate LIKE '2009%'
GROUP BY e.EmployeeId
)

SELECT 
    firstName,
    lastName
FROM maxTotal
WHERE total=(SELECT MAX(total) FROM maxTotal)