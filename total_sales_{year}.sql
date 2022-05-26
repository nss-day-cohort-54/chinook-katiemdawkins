SELECT 
    SUM(total)
FROM Invoice  
WHERE strftime('%Y', InvoiceDate)='2009'

SELECT 
    SUM(total)
FROM Invoice  
WHERE strftime('%Y', InvoiceDate)='2011'