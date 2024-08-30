## Exercício 07 de BDI
## Modelagem Conceitual com Modelo Entidade-Relacionamento (MER)

Desenvolva o diagrama de entidades e relacionamentos para cada questão abaixo. Utilize todos os elementos notacionais e todos os conceitos ligados a esse tipo de diagrama, vistos no curso.

1) O cliente pode ter várias contas-corrente em um banco. Para suas contas é importante conhecer suas movimentações diárias, para as quais se registram a data da movimentação, o valor da movimentação e tipo da movimentação, ou seja, se é de débito ou é de crédito. Um cliente pode ter várias contas em uma mesma agência, entre as várias agências do banco. Para cada agência é importante conhecer o número da agência e o endereço. Os dados de conta são: o número, a data de abertura e o limite.

2) Um campeonato de futebol precisa de um banco de dados, que precisa atender o seguinte.

    Todo jogo tem um time visitante e um time da casa. Os clubes ou times envolvidos no campeonato têm nome, código, dirigente e endereço da sede. Os jogadores devem se associar a um único clube e têm CPF, nome, posição e idade. Para cada jogo é importante saber qual foi a posição na qual cada jogador atuou e os jogadores que marcaram gols, assim como o tempo no qual o gol foi marcado. Para cada jogo deve ser indicado o placar tanto do time visitante quanto do time da casa.

3) Uma universidade controla o nome de cada estudante, sua matrícula, seu endereço na cidade, onde fica sua universidade (endereço temporário), assim como o endereço de seus pais (endereço permanente), data de aniversário, sexo, categoria do estudante (calouro, veterano e graduado) e seu nível (graduação, especialização, mestrado e doutorado). Para cada estudante, precisamos, em seu endereç o (seja ele temporário ou permanente), da rua, a cidade e o CEP. A matrícula do estudante tem valor único.

    Cada departamento da Universidade é descrito por um nome, um có digo, o número da sala da secretaria, telefone da secretaria e da faculdade. Ambos, nome e có digo, tê m valores únicos para cada departamento. Cada departamento é responsável por um curso, cujos dados são código do curso, nome do curso, carga horária total e coordenador.

    Cada disciplina tem um nome, uma descrição, um código, o departamento ao qual pertence, número de horas por semestre e nível. Cada curso é composto por um conjunto de disciplinas.

    Cada turma de uma disciplina tem um professor, semestre, ano, curso e número da turma. O número da turma distingue turmas da mesma disciplina durante o mesmo semestre/ano, seus valores são sequenciais e começam de 1 e vã o até o nú mero de turmas oferecidas durante um semestre. Por exemplo, se a disciplina Banco de Dados I para o 1o semestre de 2019 for ministrada em três turmas, terá os números 1, 2 e 3, um para cada turma. Já para 2o semestre de 2019, se ocorrer em 5 turmas terá os nú meros 1, 2, 3, 4 e 5.

    Cada estudante tem uma nota final para cada turma, sendo que as notas podem ser A, B, C, D ou E. A partir dessas notas, é montado o histórico do estudante.

### Observações:

  Inclua atributos para melhorar a descrição e entendimento de suas entidades, caso ache apropriado. Eventualmente, os enunciados acima não detalham todas as situações do minimundo descrito, importantes para a diagramação. Nesses casos, decida o que fazer e anote suas decisões. Isso faz parte da avaliação.
