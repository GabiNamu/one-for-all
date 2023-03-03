SELECT FORMAT(MIN(p.price), 2) as faturamento_minimo,  MAX(p.price) as faturamento_maximo, ROUND(AVG(p.price), 2) as faturamento_medio, ROUND(SUM(p.price), 2) as faturamento_total
FROM SpotifyClone.plans as p
INNER JOIN SpotifyClone.users as u ON u.plan_id = p.id;