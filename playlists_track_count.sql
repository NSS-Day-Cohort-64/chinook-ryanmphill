--Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
    --Playlist name
    --Total number of tracks on each playlist

SELECT 
    P.Name AS PlaylistName,
    COUNT(Pt.TrackId) AS NumberOfTracks
FROM Playlist P
JOIN PlaylistTrack Pt ON Pt.playlistId = P.playlistId
GROUP BY P.Name;
