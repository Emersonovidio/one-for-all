SELECT
  u.nome AS usuario,
    IF (MAX(YEAR(r.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo')  AS condicao_usuario 
    FROM usuarios u
    JOIN historico_de_reproducoes r
    ON r.usuario_id = u.usuario_id
	GROUP BY u.nome 
	ORDER BY u.nome;