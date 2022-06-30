SELECT 
  artistas.nome as artista, 
  alb.nome as album,
  COUNT(seguidores.artista_id) as seguidores
FROM artista artistas
INNER JOIN albuns alb
	ON artistas.artista_id = alb.artista_id
INNER JOIN artistas_seguidos seguidores
	ON artistas.artista_id = seguidores.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC,artista ASC,album ASC;