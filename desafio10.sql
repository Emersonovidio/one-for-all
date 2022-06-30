SELECT c.nome AS nome,
	COUNT(*) AS reproducoes
FROM historico_de_reproducoes r
JOIN cancoes AS c
ON r.cancoes_id = c.cancoes_id
JOIN usuarios AS u
ON r.usuario_id = u.usuario_id
WHERE u.plano_id IN(1, 4)
GROUP BY nome
ORDER BY nome ASC;