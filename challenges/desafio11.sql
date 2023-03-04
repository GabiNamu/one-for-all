SELECT al.name as album, COUNT(f.song_id) as favoritadas
FROM SpotifyClone.album as al
INNER JOIN SpotifyClone.songs as s ON al.id = s.album_id
INNER JOIN SpotifyClone.favorite_songs as f ON f.song_id = s.id
GROUP BY al.name
ORDER BY COUNT(f.song_id) DESC, al.name
LIMIT 3;