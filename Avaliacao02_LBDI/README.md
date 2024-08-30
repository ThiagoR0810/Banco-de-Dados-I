## Avaliação 02 de LBDI

**Questão 01** 

Projete duas tabelas quaisquer sobre um assunto específico e que sejamlogicamente relacionadas. Crie chaves primárias em cada uma e uma única chave estrangeira entre elas.A partir dessas tabelas, apresente exemplos e explicações para as propriedades I e D das propriedadesACID. Cada uma das duas propriedades deve ser apresentada, exemplificada e explicada em transaçõesseparadas. Também explique o que cada transação faz e como a propriedade escolhida é contempladanela. ACID é um conjunto de propriedades de transações de banco de dados destinadas a garantir avalidade, a consistência e persistência do banco de dados, apesar de erros, falhas de energia e outroscontratempos. Não é permitido o uso de exemplos dados em aulas. Soluções que tenham o mesmoassunto ou respostas similares podem caracterizar cópia. Portanto, é sugerido que seja informado aoprofessor qual o assunto a ser tratado pelas tabelas do banco de dados de cada avaliação já no início daavaliação. Para o adequado tratamento de transação concorrente, sugere-se que a ferramentaSQL*Developer seja utilizada diretamente, sem uso de navegadores, portanto.

**Questão 02** 

Execute o seguinte comando SQL, o qual copia uma tabela do usuário SH parao seu usuário de banco de dados.create table countries as select * from sh.countries;A partir dessa tabela, apresente o que se pede abaixo.
    
a) Consulta SQL que retorne um único registro e o seu plano de execução (explain plain). A colunada seleção desse único registro que pode ser potencialmente uma futura chave primária simples.Essa coluna não pode ser definida como chave primária, pelos menos por enquanto. Apresenteo plano de execução da consulta e a sua explicação.

b) Comando de criação de índice único ou não único para que a mesma consulta acima sejarealizada com o auxílio do índice criado. Apresente o plano de execução da consulta, que deveutilizar o índice criado. Explique o plano obtido.

c) Faça uma consulta que ligue o único registro selecionado acima a todas as suas respectivasocorrências em SH.CUSTOMERS, utilizando uma junção. A tabela SH.CUSTOMERS nãodeve ser criada em sua conta. Ou seja, utilize a que está no usuário SH mesmo. Apresente aconsulta, o plano de execução que pode executá-la e a sua explicação.
