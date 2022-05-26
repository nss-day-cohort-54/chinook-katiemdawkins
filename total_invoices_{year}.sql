SELECT COUNT(*) 
from Invoice 
WHERE strftime('%Y',InvoiceDate)='2009'

SELECT COUNT(*) 
from Invoice 
WHERE strftime('%Y',InvoiceDate)='2011'