SELECT a.name as artista, al.name as album
FROM SpotifyClone.artist as a 
INNER JOIN SpotifyClone.album as al ON al.artist_id = a.id
WHERE a.name = 'Elis Regina'
ORDER BY al.name;