SELECT a.name as artista, al.name as album, COUNT(ua.artist_id) as pessoas_seguidoras
FROM SpotifyClone.artist as a
INNER JOIN SpotifyClone.album as al ON al.artist_id = a.id
INNER JOIN SpotifyClone.users_artists as ua ON ua.artist_id = a.id
GROUP BY ua.artist_id, al.name
ORDER BY COUNT(ua.artist_id) DESC, a.name, al.name;