SELECT a.nome AS artista, 
		alb.nome AS album
FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.artista AS a 
ON alb.artista_id = a.artista_id
WHERE a.nome = 'Walter Phoenix'
ORDER BY alb.album_id;