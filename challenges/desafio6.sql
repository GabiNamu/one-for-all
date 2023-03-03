SELECT FORMAT(MIN(p.price), 2) as faturamento_minimo, CONVERT(MAX(p.price), CHAR) as faturamento_maximo, 
CONVERT(ROUND(AVG(p.price), 2), CHAR) as faturamento_medio, CONVERT(ROUND(SUM(p.price), 2), CHAR) as faturamento_total
FROM SpotifyClone.plans as p
INNER JOIN SpotifyClone.users as u ON u.plan_id = p.id;