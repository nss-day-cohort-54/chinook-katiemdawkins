SELECT 
    e.FirstName employeeFN,
    e.LastName employeeLN,
    i.InvoiceId
FROM Customer c
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId