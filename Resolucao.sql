select nome, ano from filmes;


select * from filmes order by ano ASC;


SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';


SELECT *
FROM filmes
WHERE ano = 1997;


SELECT *
FROM filmes
WHERE ano > 2000;


SELECT *
FROM filmes
WHERE duracao > 100 and duracao < 150 order by duracao ASC;


SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DES


SELECT primeironome, ultimonome
FROM atores
WHERE genero = 'M';


SELECT primeironome, ultimonome
FROM atores
WHERE genero = 'F'
ORDER BY primeironome ASC;


SELECT f.nome AS nome_filme, g.genero AS genero
FROM filmes f
JOIN filmesgenero fg ON f.id = fg.idfilme
JOIN generos g ON fg.idgenero = g.id;


SELECT f.nome AS nome_filme, g.genero AS genero
FROM filmes f
JOIN filmesgenero fg ON f.id = fg.idfilme
JOIN generos g ON fg.idgenero = g.id
WHERE g.genero = 'Mistério';


SELECT f.nome AS nome_filme, a.primeironome, a.ultimonome, ef.papel
FROM filmes f
JOIN elencofilme ef ON f.id = ef.idfilme
JOIN atores a ON ef.idator = a.id;