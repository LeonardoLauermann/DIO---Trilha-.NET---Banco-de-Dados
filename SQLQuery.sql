-- 1 - Buscar o nome e ano dos filmes
select nome,ano from Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome,ano from Filmes order by Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome,ano,duracao from Filmes where nome = 'de volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes where ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where ano >= 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where duracao between  100 and  150 order by duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome,UltimoNome from Atores 
where genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome,UltimoNome from Atores 
where genero = 'F'
order by PrimeiroNome asc;

-- 10 - Buscar o nome do filme e o gênero
select nome, genero from Filmes f 
inner join FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.nome,g.genero from filmes f
inner join FilmesGenero fg ON f.Id = fg.IdFilme
inner join Generos g ON fg.IdGenero = g.Id
where g.genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome,ato.primeironome,ato.ultimonome, ef.papel from Atores ato
inner join ElencoFilme ef ON ato.Id = ef.idAtor
inner join Filmes f ON ef.IdFilme = f.Id;


