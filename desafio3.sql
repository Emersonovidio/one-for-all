SELECT 
	u.nome as usuario,
    COUNT(r.cancoes_id) as qtde_musicas_ouvidas,
    FORMAT(SUM(c.duracao_segundos) / 60, 2) as total_minutos
	FROM usuarios u
	JOIN historico_de_reproducoes AS r
		ON r.usuario_id = u.usuario_id
    JOIN cancoes c 
		ON r.cancoes_id = c.cancoes_id
    GROUP BY u.nome
    ORDER BY u.nome ASC;