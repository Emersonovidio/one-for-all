SELECT COUNT(c.cancoes_id) AS cancoes, 
COUNT(DISTINCT a.artista_id) AS artistas, 
COUNT(DISTINCT c.album_id) AS albuns
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.albuns a
ON c.album_id = a.album_id;