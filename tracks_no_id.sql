--Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
    --Album name
    --Media type
    --Genre
SELECT 
    T.name SongTitle,
    A.Title AlbumName,
    Mt.Name MediaType,
    G.Name Genre,
    T.Composer,
    T.Milliseconds,
    T.Bytes,
    T.UnitPrice
 FROM Track T
 JOIN Album A ON A.AlbumId = T.AlbumId
 JOIN MediaType Mt ON Mt.MediaTypeId = T.MediaTypeId
 JOIN Genre G ON G.GenreId = T.GenreId;