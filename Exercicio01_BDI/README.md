## Exercício 01 de BDI e LBDI
## Funções SQL

![image](https://github.com/user-attachments/assets/d32cad61-cd1c-4f5c-a4cb-3b1fc9230d1d)


Resolva, as seguintes questões, apresentando o comando SQL apropriado. Também apresente os resultados obtidos. Faça isso a partir do esquema de banco de dados relacional já apresentado acima. Use o banco de dados na nuvem que já tem as tabelas disponíveis para consulta por todos os usuários do banco.

1) Apresente o primeiro e último nomes e o mês, por extenso, de admissão (coluna Hire_Date de EMPLOYEES) de todos os empregados que começam com a letra ‘R’ no último nome. Não utilize LIKE, mas funções SQL. O formato de exibição por extenso das datas deve ser ‘DD-Month-YYYY’. Exemplo: ‘01-Janeiro-2021’.

2) Apresente o nome completo (primeiro nome concatenado com o último nome, separados por branco (use a função concat)) de todos os empregados que trabalham no departamento que tem “executive” (em minúsculas) no nome. O nome do departamento deve aparecer no resultado em maiúsculas. Utilize funções SQL e junções. Não utilize o operador LIKE.

3) Apresente o nome completo e a data de admissão (coluna Hire_Date de Employees) de todos os empregados que foram admitidos no ano de 1999. Use a coluna HIRE_DATE com funções de data. O formato de exibição das datas deve ser ‘DD-Month-YYYY’. Exemplo: ‘01-janeiro-2021’.

4) Apresente o nome completo, o salário diário, arredondado, e o anual de todos os empregados que ganham comissão (coluna Comission_Pct). O salário (Salary) em EMPLOYEES é mensal para todos os empregados.

5) Apresente o nome completo de todos empregados, com salário mensal e o salário mensal mais a comissão (que é um percentual mensal de 0 a 1). Caso não tenha comissão, o empregado tem a coluna Comission_Pct igual a NULL. Empregados sem comissão devem ser incluídos no resultado, naturalmente a comissão deles é zero. Dê nomes adequados às colunas de resultado.

6) Apresente somente a inicial de cada nome (primeiro e último nomes) de empregados que são gerentes de departamento. Incluir o nome do departamento.

7) Apresente o nome completo de todos os empregados, a quantidade de anos e meses trabalhando na empresa. Os resultados devem ser inteiros. A data atual do SGBD é fornecida pela função SYSDATE.

8) Apresente a média, arredondada, o máximo, o mínimo salário por departamento, incluindo o nome do departamento. Considere toda a tabela.

9) Apresente a quantidade de empregados por departamento. Faça somente isso para empregados que têm ‘clerk’ na coluna JOB_ID (código do cargo). O departamento deve aparecer. Utilize o operador LIKE ou a função SUBSTR, com o devido tratamento para as linhas existentes.
