SELECT CASE 
  WHEN u.age <= 30 THEN 'Até 30 anos'
  WHEN u.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
  ELSE 'Maior de 60 anos'
END as faixa_etaria, COUNT(DISTINCT u.id) as total_pessoas_usuarias, COUNT(f.user_id) as total_favoritadas
FROM SpotifyClone.users AS u
LEFT JOIN SpotifyClone.favorite_songs as f ON f.user_id = u.id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;