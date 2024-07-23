-- Banco de Dados I
-- Exercício 5 – Sentenças de Grupo
-- Alunos: Thiago Ribeiro e Ana Clara Lopes

-- Questao 01
-- Apresente o nome do cliente e o total de pedidos (soma de ORD.TOTAL) para cada cliente.

select C.NAME "NOME DO CLIENTE", sum(O.TOTAL) "TOTAL DE PEDIDOS" 
from ALUNO.ORD O join ALUNO.CUSTOMER C
     on O.CUSTID = C.CUSTID
group by C.NAME;

-- Questao 02
-- Exiba a descrição do produto e a soma da quantidade pedida (soma de ITEM.QTY). Cada item de pedido,
-- refere-se a um produto e possui a quantidade (QTY) pedida.

select P.DESCRIP "DESCRICAO DO PRODUTO", sum(I.QTY) "SOMA DA QUANTIDADE PEDIDA"
from ALUNO.PRODUCT P join ALUNO.ITEM I
     on P.PRODID = I.PRODID
group by P.DESCRIP;

-- Questao 03
-- Identifique o(s) produto(s) mais pedidos, ou seja, que possui a maior soma de quantidade em itens. Apresente
-- a descrição do produto e a soma dessa quantidade.

select P.DESCRIP "DESCRICAO DO PRODUTO", sum(I.QTY) "SOMA DA MAIOR QUANTIDADE PEDIDA"
from ALUNO.ORD O join ALUNO.ITEM I 
     on O.ORDID = I.ORDID 
     join ALUNO.PRODUCT P
     on P.PRODID = I.PRODID
group by P.DESCRIP
having sum(I.QTY) = (select max(sum(I.QTY))
                     from ALUNO.ORD O join ALUNO.ITEM I 
                          on O.ORDID = I.ORDID 
                          join ALUNO.PRODUCT P
                          on P.PRODID = I.PRODID
                     group by P.DESCRIP);

-- Questao 04
-- Liste o total de pedidos (soma de ORD.TOTAL) por vendedor (ou seja, empregado), apresentando o nome do
-- vendedor. REPID de CUSTOMER refere-se ao vendedor que atende o cliente. Ou seja, CUSTOMER.REPID
-- é chave estrangeira de EMP.EMPNO.

select E.ENAME "NOME DO VENDEDOR", sum(O.TOTAL) "TOTAL DE PEDIDOS"
from ALUNO.ORD O join ALUNO.CUSTOMER C
     on O.CUSTID = C.CUSTID 
     join ALUNO.EMP E 
     on E.EMPNO = C.REPID
group by E.ENAME;

-- Questao 05 
-- Apresente o total (soma de ORD.TOTAL) e o valor médio (média de ORD.TOTAL) dos pedidos por cidade,
-- a qual deve aparece.

select C.CITY "CIDADE", sum(O.TOTAL) "TOTAL DE VENDAS", round(avg(O.TOTAL)) "VALOR MEDIO DOS PEDIDOS"
from ALUNO.ORD O join ALUNO.CUSTOMER C
     on O.CUSTID = C.CUSTID
group by C.CITY;

--Questao 06
-- Apresente os nomes dos gerentes e total de pedidos (soma de ORD.TOTAL) dos empregados gerenciados por
-- eles. A coluna EMP.MGR mantém o gerente de cada empregado é chave estrangeira para EMP.EMPNO

select G.MGR "NUMERO DO GERENTE", G.ENAME "NOME DO GERENTE", sum(O.TOTAL) "TOTAL DE PEDIDOS"
from ALUNO.EMP E join ALUNO.CUSTOMER C
     on E.EMPNO = C.REPID
     join ALUNO.ORD O 
     on C.CUSTID = O.CUSTID 
     join ALUNO.EMP G 
     on G.EMPNO = E.MGR 
group by G.MGR, G.ENAME;