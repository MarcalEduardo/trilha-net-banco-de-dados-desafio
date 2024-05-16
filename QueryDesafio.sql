--1 - Buscar o nome e ano dos filmes

select Nome, Ano from Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select Nome, Ano , Duracao from Filmes order by Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select Nome , Ano , Duracao from Filmes where nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997

select * from Filmes where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

select * from Filmes where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select * from Filmes where Duracao > 100 and Duracao < 150 ORDER by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT 
    Ano,
    COUNT(*) AS Quantidade
    
FROM 
    Filmes

GROUP BY 
    Ano

ORDER BY
   Quantidade DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
select f.Nome , g.Genero from Filmes f inner join FilmesGenero fg ON f.Id = fg.IdFilme
                                       inner join Generos g ON fg.IdGenero = g.Id



-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

select f.Nome , g.Genero from Filmes f inner join FilmesGenero fg ON f.Id = fg.IdFilme
                                       inner join Generos g ON fg.IdGenero = g.Id 
									   where g.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select f.Nome , a.PrimeiroNome , a.UltimoNome , ef.Papel 
from ElencoFilme ef 
inner join Filmes f ON f.Id = ef.IdFilme 
inner join Atores a ON  a.Id = ef.IdAtor
							 
