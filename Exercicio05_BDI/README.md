## Exercício 05 de BDI
## Sentenças de Grupo

A partir do esquema relacional apresentado na figura abaixo, apresente as consultas SQL para cada uma das questões a seguir. Inclua na resposta o resultado da consulta. O banco de dados mantém dados de vendas de produtos esportivos, com dados de clientes (CUSTOMER), pedidos (ORD), item vendidos em pedidos (ITEM), produtos (PRODUCT), preços (PRICE), empregados (EMP) e faixas salarias (SALGRADE). Há empregados,particularmente os vendedores, que atendem clientes. Nesses casos, CUSTOMER.REPID é chave estrangeira de EMP.EMPNO. Utilize o banco de dados da disciplina, disponível na nuvem. Essas tabelas estão no esquema ALUNO e são públicas, então todos os usuários do banco de dados podem acessá-las. Ainda assim, pode-se usar ALUNO antes das tabelas, separados por ponto. Exemplo: select * from ALUNO.ORD;

![image](https://github.com/user-attachments/assets/a32e8db7-580e-4ce3-974d-f0143f05b814)

1) Apresente o nome do cliente e o total de pedidos (soma de ORD.TOTAL) para cada cliente.

2) Exiba a descrição do produto e a soma da quantidade pedida (soma de ITEM.QTY). Cada item de pedido, refere-se a um produto e possui a quantidade (QTY) pedida.

3) Identifique o(s) produto(s) mais pedidos, ou seja, que possui a maior soma de quantidade em itens. Apresente a descrição do produto e a soma dessa quantidade.

4) Liste o total de pedidos (soma de ORD.TOTAL) por vendedor (ou seja, empregado), apresentando o nome do vendedor. REPID de CUSTOMER refere-se ao vendedor que atende o cliente. Ou seja, CUSTOMER.REPID é chave estrangeira de EMP.EMPNO.

5) Apresente o total (soma de ORD.TOTAL) e o valor médio (média de ORD.TOTAL) dos pedidos por cidade, a qual deve aparece.

6) Apresente os nomes dos gerentes e total de pedidos (soma de ORD.TOTAL) dos empregados gerenciados por eles. A coluna EMP.MGR mantém o gerente de cada empregado é chave estrangeira para EMP.EMPNO.
