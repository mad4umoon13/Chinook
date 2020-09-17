-- Independent Project 2: Music Store Analysts

-- Which tracks appeared in the most playlists? 
-- How many playlists did they appear in?

SELECT tracks.Name, COUNT(playlist_track.PlaylistId) AS '# of Playlist'
FROM tracks
JOIN playlist_track
ON tracks.TrackId = playlist_track.TrackId
GROUP BY 1
ORDER BY 2 DESC;
