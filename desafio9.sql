SELECT COUNT(r.usuario_id) AS quantidade_musicas_no_historico
	FROM historico_de_reproducoes AS r
	INNER JOIN usuarios AS u ON r.usuario_id = u.usuario_id
    WHERE u.nome = "Bill"; 