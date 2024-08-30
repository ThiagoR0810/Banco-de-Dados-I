## Exercicio 03 de BD I e de LBD I 
## Comandos DDL (Linguagem de Definição de Dados) e DML (Linguagem de Manipulação de Dados) 

Apresente os comandos SQL para as seguintes questões. Inclua também os resultados dos comandos utilizados.

1. Crie as tabelas seguintes, sem chaves primárias e sem chaves estrangeiras.

   a. TIME (ID, NOME)

   b. JOGO (DATA, PLACAR_CASA, PLACAR_VISITANTE)

   c. JOGADOR (CPF, NOME)

3. Preencha essas tabelas com dados com pelo menos 3 linhas por tabela.

4. Adicione as chaves primárias TIME.ID e JOGADOR.CPF.

5. Adicione as chaves estrangeiras em JOGO e JOGADOR, considerando as seguintes integridades referenciais. As colunas para as chaves estrangeiras também deve ser incluídas (JOGO.ID_CASA, JOGO.ID_VISITANTE, JOGADOR.ID_TIME). Observe o comportamento de remoção nas integridades referenciais ( p, para propagação, e b, para bloqueio.

   a. JOGO[ID_CASA] -> p TIME[ID]
   
   b. JOGO[ID_VISITANTE] -> p TIME[ID]
   
   c. JOGADOR[ID_TIME] -> TIME[ID]

6. Estabeleça as integridades referenciais através de dados em todas as tabelas com chaves estrangeiras. Para isso, preencha as chaves estrangeiras com valores de chaves primárias.

7. Adicione a chave primária em JOGO, formada pelas chaves estrageiras e pela coluna DATA.

8. Alterar a coluna de ID_TIME de JOGADOR para obrigatória.

9. Crie uma chave única em JOGADOR.NOME.

10. Povoe ou altere todos os dados para que as restrições impostas acima sejam respeitadas.
