SELECT u.name as pessoa_usuaria, IF(MAX(YEAR(reproduction_date)) >= 2021, 'Ativa', 'Inativa') as status_pessoa_usuaria
FROM SpotifyClone.users as u 
INNER JOIN SpotifyClone.history as h ON h.user_id = u.id
GROUP BY u.name
ORDER BY u.name;