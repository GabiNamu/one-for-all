SELECT a.name as artista, CASE 
 WHEN COUNT(f.song_id) >= 5 THEN 'A'
 WHEN COUNT(f.song_id) = 3 OR COUNT(f.song_id) = 4 THEN 'B'
 WHEN COUNT(f.song_id) IN (1, 2) THEN 'C'
 ELSE '-'
END as ranking
FROM SpotifyClone.album as al
LEFT JOIN SpotifyClone.songs as s ON al.id = s.album_id
LEFT JOIN SpotifyClone.favorite_songs as f ON f.song_id = s.id
LEFT JOIN SpotifyClone.artist as a ON a.id = al.artist_id
GROUP BY a.name
ORDER BY COUNT(f.song_id) DESC, a.name;