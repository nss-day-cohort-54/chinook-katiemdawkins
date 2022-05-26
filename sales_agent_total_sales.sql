-- Provide a query that shows 
-- total sales made by each sales agent. 
-- The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT 
    e.firstName,
    e.lastName,
    SUM(i.total) 
    
FROM Employee e 
JOIN CUSTOMER c 
    ON c.supportRepId = e.employeeid 
JOIN Invoice i 
    ON c.customerId = i.customerid
GROUP BY e.EmployeeId
