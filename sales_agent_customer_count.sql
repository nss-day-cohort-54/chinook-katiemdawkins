-- Provide a query that shows how many customers 
-- are assigned to each employee. 
-- The resultant table should include:
-- Employee full name
-- Total number of customers assigned 
-- to each employee (even if it's zero)

SELECT 
    e.firstName,
    e.lastName,
    COUNT(c.CustomerId) as Customers
FROM Employee e  
LEFT JOIN Customer c
    ON c.supportrepid = e.employeeId
GROUP By e.employeeid


