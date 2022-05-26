SELECT
    i.InvoiceLineId,
    t.name,
    a.name
FROM InvoiceLine i 
JOIN Track t
    on i.TrackId = t. TrackId
Join Album al 
    on al.AlbumId = t.AlbumId
JOIN Artist a 
    on a.artistId = al.artistId


    -- Provide a query that shows each 
    --Invoice line item, with the name 
    --of the track that was purchase, 
    --and the name of the artist.