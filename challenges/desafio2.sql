SELECT COUNT(s.name) as cancoes, COUNT(DISTINCT a.name) as artistas, COUNT(DISTINCT al.name) as albuns 
FROM SpotifyClone.artist as a
LEFT JOIN SpotifyClone.album as al ON al.artist_id = a.id
LEFT JOIN SpotifyClone.songs as s ON s.album_id = al.id;