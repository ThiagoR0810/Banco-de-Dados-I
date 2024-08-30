## Exercício 06 de BDI
## Álgebra Relacional

Seja o banco de dados de uma cinemateca representado pelo seguinte esquema relacional:

    Estúdio (CodEst, NomeEst)
    Filme (CodFilme, Título, Diretor, Genero, AnoProd, CodEst)
      Filme [CodEst] -> Estudio [CodEst]
    Ator (CodAtor, Nome)
    Elenco (CodFilme, CodAtor, Salário)
      Elenco [CodAtor] -> Ator [CodAtor]
      Elenco [CodFilme] -> Filme [CodFilme]

Expresse, com operadores da Álgebra Relacional, as seguintes consultas:

1) Liste o título e o gênero dos filmes produzidos pelo estúdio Paramount Pictures neste ano.

2) Liste o nome e o salário dos atores que atuaram no filme Matrix Revolutions.

3) Liste o título e o ano de produção de todos os filmes cujos diretores também fizeram parte do elenco.

4) Liste o nome dos atores que já atuaram em algum filme dirigido por Clint Eastwood.

5) Liste o nome dos atores que já atuaram em filmes produzidos pela MGM, mas nunca foram dirigidos por Clint Eastwood.

6) Liste o nome dos atores que na década de 90 atuaram em filmes produzidos pela MGM e pela Universal.

7) Apresente a quantidade de filmes produzidos por estúdio, por ano.
    
