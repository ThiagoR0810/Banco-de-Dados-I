## Exercício 08 de BDI
## Modelo Entidade-Relacionamento (MER) Estendido

Resolva as seguintes questões, apresentando o modelo conceitual para cada questão abaixo. Utilize todos os elementos notacionais e todos os conceitos ligados aos tipos de diagramas vistos nas aulas da disciplina. Ou seja, use o Modelo Entidade-Relacionamento (MER) Estendido. É importante observar que a Folha ER da Ferramenta Dia não possui nativamente a abstração de herança. Para contornar isso, pode se usar um atributo como o círculo da herança e arcos para os símbolos de está-contido. Para a completude (participação total ou parcial), pode-se usar as duas linhas de participação, usadas em relacionamentos. A figura a seguir apresenta um diagrama no Dia desenhado com esses símbolos.

![image](https://github.com/user-attachments/assets/53596d9a-e4d6-4d70-b886-da4ccf83bb1e)

1) Deseja-se construir um sistema gestão de sítios WEB. Este sistema irá armazenar o conteúdo de um sítio web. Um sítio tem um nome, uma url e um número de identificação interna. Cada sítio é composto por muitas páginas. Cada página pertence a um sítio somente, é identificada por um número identificador e tem um nome. As páginas podem ser de dois tipos, chamados custom e template. No caso das páginas custom, o sistema simplesmente armazena o conteúdo da página, na forma de string longo que contém o código HTML ou PHP da página, juntamente com um sinalizador que indica a linguagem (HTM ou PHP). Não estão previstas outras linguagens. As páginas template são páginas com funcionalidade pré-determinada. Estas páginas são usadas para acessar uma base de dados. Neste caso, o sistema deve armazenar os dados necessários ao acesso da base de dados, que são o número IP do servidor, o nome da base de dados, o nome do usuário do SGBD e a senha de acesso. Por sua vez, as páginas template podem ser classificadas em dois tipos, as páginas que exibem dados do resultado de uma consulta e as páginas que disponibilizam um formulário que permite que sejam feitas modificações em uma tabela. Para as páginas de consulta, o sistema armazena um comando SQL que monta a consulta a ser exibida na página. A partir deste comando, a página é montada dinamicamente cada vez que requisitada pelo usuário. Já para páginas de formulário de modificação, o sistema armazena o nome da tabela que é alterada através do formulário, bem como três indicadores que informam que tipo de modificações (inclusão, exclusão e alteração) podem ser realizadas através do formulário. Além de armazenar o conteúdo do sítio, o sistema de gestão deve controlar o acesso e a modificação de páginas. Para tal, o sistema deve manter um cadastro de usuários, identificados por seu nome, tendo cada um uma senha. Para cada sítio e para cada usuário, pode ser definido seu direito de acesso. O direito de acesso pode ser "Acesso", que significa que o usuário somente pode acessar o sítio, ou "Adm", que significa que ele também pode fazer modificações nas páginas do sítio. Da mesma forma, para cada página e para cada usuário, também pode ser definido o direito de acesso à página específica ("Adm"ou "Acesso").

2) Um museu tem uma coleção de objetos de arte. Cada objeto de arte tem um número único, um artista, um ano, um título e uma descrição. Os objetos de arte são categorizados de diversas maneiras, como apresentado abaixo:

* Há três principais tipos: pintura, escultura e estátua. Os objetos de arte que não se encaixam em nenhum desses tipos são chamados de OUTROS.

* Uma pintura tem um tipo de pintura (óleo, tinta etc.), o material onde ela foi pintada (papel, tela, madeira etc.) e o estilo (moderno, abstrato etc.).

* Uma escultura tem o tipo de material (pedra, madeira etc.), altura, peso e estilo.

* Um objeto de arte classificado como OUTRO tem um tipo (gravura, foto etc.) e um estilo.

* Um objeto de arte também é categorizado como permanente (faz parte do acervo do museu e tem as seguintes informações: data de aquisição, se está exposto ou guardado e o seu custo) e como emprestado (tem as informações da coleção que a emprestou, além da data de empréstimo e da data de retorno).

* Para um objeto de arte também temos informações como sua origem cultural (italiana, egípcia, indiana etc.) e sua época (Renascimento, Modernismo etc.).

* O museu também mantém informações dos artistas, que são: nome, data de nascimento, data de falecimento (se for o caso), país de origem, época, estilo e descrição. O nome do autor é único.

* No museu ocorrem diferentes exposições, sendo que para cada uma é preciso registrar: nome, data de início, data final e todos os objetos que foram exibidos durante a exposição.

* Outra informação mantida pelo museu são as coleções que emprestam objetos de arte para serem expostos em suas exibições. Para essas coleções, é importante conhecer as seguintes informações: nome (único), tipo (museu, pessoal etc.), descrição, endereço, pessoa de contato e telefone.
