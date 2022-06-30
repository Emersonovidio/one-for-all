SELECT
	c.nome AS cancao,
    COUNT(r.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS r ON r.cancoes_id = c.cancoes_id
GROUP BY r.cancoes_id
ORDER BY reproducoes DESC, cancao
LIMIT 2