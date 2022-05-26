

WITH topAgentOverall AS (
SELECT 
    SUM(i.total) AS total,
    e.firstName,
    e.lastName
FROM Employee e 
JOIN CUSTOMER c 
    ON c.supportRepId = e.employeeid 
JOIN Invoice i 
    ON c.customerId = i.customerid
GROUP BY e.EmployeeId
)

SELECT
    firstName,
    LastName
FROM topAgentOverall
WHERE total=(SELECT MAX(total) FROM topAgentOverall)