SELECT 
    i.Total InvoiceTotal,
    c.FirstName customerFirstName,
    c.LastName customerLastName,
    c.Country,
    e.FirstName employeeFirstName,
    e.LastName employeeLastName
From Customer c
JOIN Invoice i
    on c.CustomerId = i.CustomerId
JOIN Employee e 
    on c.SupportRepId = e.EmployeeId