-- I used Gemini to help me join elements with outher elements


SELECT 
    albums.AlbumId,
    albums.Title AS AlbumTitle,
    artists.Name AS ArtistName,
    genres.Name AS Genre,
    SUM(invoice_items.UnitPrice * invoice_items.Quantity) AS TotalRevenue
FROM 
    albums
JOIN 
    artists ON albums.ArtistId = artists.ArtistId
JOIN 
    tracks ON albums.AlbumId = tracks.AlbumId
JOIN 
    genres ON tracks.GenreId = genres.GenreId
JOIN 
    invoice_items ON tracks.TrackId = invoice_items.TrackId
GROUP BY 
    albums.AlbumId
ORDER BY 
    TotalRevenue DESC
LIMIT 10;
