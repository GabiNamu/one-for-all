SELECT u.name as pessoa_usuaria, COUNT(h.song_id) as musicas_ouvidas, ROUND(SUM(s.duration) / 60, 2) as total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history as h ON h.user_id = u.id
INNER JOIN SpotifyClone.songs as s ON s.id = h.song_id
GROUP BY h.user_id
ORDER BY u.name;