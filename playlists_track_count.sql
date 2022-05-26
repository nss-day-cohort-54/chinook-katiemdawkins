-- Provide a query that shows the total 
-- number of tracks in each playlist. 
-- The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist


SELECT   
    p.name,
COUNT(*)
From PlaylistTrack pt
Join Playlist p
    on p.PlaylistId = pt.PlaylistId
GROUP BY p.name

