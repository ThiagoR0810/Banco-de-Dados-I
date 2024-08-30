## Avaliação 01 de LBDI

**Questão 01** 

Crie o seguinte esquema relacional e preencha com dados. Implemente o seguinte esquema relacional, o qual trata de instituições de pesquisa. Nomeie todas as restrições. Observe o comportamento da remoção quando as manipulações envolverem tabelas com chaves primárias, referenciadas por chaves estrangeiras. Defina os tipos das colunas de acordo com sua conveniência. Povoe as tabelas com dados, colocando pelo menos duas duplas em cada uma.

        INSTITUICAO ( NOME, ENDERECO)
        DEPARTAMENTO (COD_DEP, NOME, NOME_INSTITUICAO, QUANT_PESQUISADORES)
            DEPARTAMENTO[NOME_INSTITUICAO] --> p INSTITUICAO[NOME]
        PESQUISADOR ( COD_DEP, NOME, DATA_NASCIMENTO)
            PESQUISADOR [COD_DEP]--> p DEPARTAMENTO [COD_DEP]

Todas as chaves primárias e estrangeiras do esquema acima devem ser implementadas. Garanta a persistência dos dados no banco de dados após as inserções de dados. Apresente, na solução, os comandos utilizados e os resultados das suas execuções.

**Questão 02**

Utilizando somente comandos ALTER TABLE (DDL) e UPDATE (DML), faça as alterações abaixo. Todos os comandos usados e os resultados obtidos devem ser apresentados na solução. Observe que as tabelas já têm dados, portanto, a ordem dos comandos e a atualização dos dados deve ser feita corretamente para manter a consistência, sem perda de dados.

    a) Remova a restrição de chave primária de INSTITUIÇÃO. Não remova dados.

    b) Adicione a coluna COD_INSTITUICAO em INSTITUICAO, preencha-a com dados, e a torne a chave primária de INSTITUICAO. Mantenha NOME em INSTITUIÇÃO.

    c) Em DEPARTAMENTO, substitua a coluna NOME_INSTITUICAO por COD_INSTITUICAO, como nova coluna também, mas em DEPARTAMENTO. Estabeleça a devida restrição de integridade referencial a seguir:

        DEPARTMENTO[COD_INSTITUICAO] --> p INSTITUICAO[COD_INSTITUICAO]

    Essa integridade deve ser obrigatória e com comportamento de remoção em cascata. Nessa substituição, a coluna NOME_INSTITUICAO em DEPARTAMENTO deve ser removida.

A definição das devidas restrições de integridade referencial faz parte da avaliação. Novamente, lembre-se de fazer as atualizações nos dados também, as quais devem ser corretamente conjugadas com os comandos DDL usados, sem perda de dados e preservando a consistência dos dados, solicitada na Questão 01.

**Questão 03**

Implemente um gatilho (trigger) de banco de dados que atualize automaticamente QUANT_PESQUISADORES em DEPARTAMENTO para qualquer inserção ou remoção de tuplas em PESQUISADOR, assim como em qualquer mudança de departamento de um pesquisador já presente na tabela PESQUISADOR. Teste o gatilho com comandos DML e apresente os resultados dos testes, comprovando o sucesso do gatilho. Novamente, todos os comandos envolvidos e os seus resultados devem ser apresentados na solução e devem ser consistentes.