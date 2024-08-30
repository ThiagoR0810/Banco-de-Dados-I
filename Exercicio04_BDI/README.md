## Exercício 04 de BDI
## Consultas aninhadas e junções internas/externas

Resolva as seguintes questões abaixo, apresentando o comando SQL apropriado, bem como o resultado.

![image](https://github.com/user-attachments/assets/90346690-37f4-444d-bf30-d83daecd0a23)

1) Apresente o nome dos departamentos que não têm empregados. Faça isso com consulta aninhada. Utilize corretamente o operador NOT IN, evitando valores nulos. Faça isso também com operadores de conjunto, como union, intersect ou minus.

2) Apresente o nome de todos os empregados (nome completo: FIRST_NAME e LAST_NAME), com o nome dos seus departamentos.

3) Agora, refaça o comando anterior para incluir também os empregados sem departamentos. Nesse caso, o nome do departamento deve ser nulo. Ou seja, faça isso com junção externa.

4) Se você usou junção externa à direita, refaça o comando anterior para usar a esquerda e vice-versa.

5) Apresente o nome dos empregados (o código dos cargos anteriores que já ocuparam (esse código está em JOB_HISTORY.JOB_ID) e data de ocupação (início e fim). Faça isso para todos os empregados, inclusive os que nunca tiveram cargos anteriores. Use junção externa. Não precisa colocar o título (JOB_TITLE) do cargo que está em JOBS.

6) Agora, refaça o comando anterior para incluir o nome do cargo, que, como foi dito, está em JOBS. Continue usando junção externa. Observe agora que são duas junções e que pode ser necessário estender a junção externa para obter o resultado correto.

7) Apresente, distintamente, todos os cargos sendo ocupados atualmente na cidade de ‘Seattle’. Utilize, para isso, somente consultas aninhadas. A palavra DISTINC pode ser usada no SELECT, diminuindo o espaço de busca nas consultas externas. DISTINCT deve vir somente uma vez, depois da cláusula SELECT e antes das colunas da projeção.

8) Resolva a consulta anterior, utilizando somente junções ao invés de consultas aninhadas.
