SELECT s.name as cancao, COUNT(h.song_id) as reproducoes
FROM SpotifyClone.songs as s 
INNER JOIN SpotifyClone.history as h ON h.song_id = s.id
GROUP BY s.name
ORDER BY COUNT(h.song_id) DESC, s.name
LIMIT 2;