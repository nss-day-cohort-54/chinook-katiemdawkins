-- Provide a query that shows all the 
--Tracks, but displays no IDs. 
-- Album name
-- Media type
-- Genre

SELECT 
    a.title AlbumTitle,
    m.name MediaType,
    g.name Genre
FROM Track t 
JOIN Album a 
    on t.albumid = a.albumid
JOIN MediaType m 
    ON t.mediatypeid = m.mediatypeid
JOIN Genre g 
    ON t.genreId = g.genreId