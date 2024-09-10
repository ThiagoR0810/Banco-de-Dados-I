## Exercício 09 de BD I

## Normalização de Banco de Dados Relacional

1) (Ex. 15.29 - Pag. 362) Considere as seguintes relações do banco de dados de uma aplicação de processamentode pedidos da empresa ABC Inc.:

    PEDIDO (Pnum, Pdata, CustoNr, Soma_Total)

    PEDIDO-ITEM (Pnum, Inum, Qtdd_Pedida, Total_Preco, Desconto%)

    Presuma que cada item tenha um desconto diferente. O Total_Preco refere-se a um item, Pdata é a data naqual o pedido foi feito e a Soma_Total é o valor do pedido. Se aplicarmos uma junção natural das relaçõesPEDIDO-TEM e PEDIDO nessas relações, como será o esquema de relação resultante? Qual será sua chave?Mostre as DFs (Dependências Funcionais) na relação resultante. Ela está na 2FN? Está na 3FN? Por quê?(Comente suas suposições, se você fizer alguma.)



2) (Ex. 15.30 - Pag. 362) Considere a seguinte relação:

    VENDA_CARRO (CarroNr, Data_Venda, VendedorNr, Comissao%, Desconto)

    Pressuponha que um carro possa ser vendido por diversos vendedores e consequentemente {CarroNr,VendedorNr} é a chave primária. Outras dependências são:

    Data Venda → Desconto

    VendedorNr → Comissao%
    
    CarroNr → Data_Venda

    Baseado na chave primária dada, essa relação está na 1FN, na 2FN ou na 3FN? Por que sim ou por que não?Quais normalizações sucessivas você faria para chegar à normalização total?



3) (Ex. 15.31 - Pag. 362) Considere a seguinte relação referente à publicação de livros:

    LIVRO (Título, NomeAutor, TipoLivro, Preço, AfiAutor, Editora)

    AfiAutor refere-se à afiliação do autor.Suponha que existam as seguintes dependências:

    Título → {Editora, TipoLivro}

    TipoLivro → Preço

    NomeAutor → AfiAutor

    a. Em que forma normal está a relação? Explique sua resposta.

    b. Aplique as normalizações até que não se possa mais decompor as relações. Explique cada decomposição.



4) (Ex. 15.33 - Pag. 363) Considere a seguinte relação:

    R (Médico#, Paciente#, Data, Diagnóstico, Codigo_Tratamento, Gasto)

    Nessa relação, uma tupla descreve a visita de um paciente a um médico junto com um código de tratamento egasto diário. Suponha que o diagnóstico seja determinado (exclusivamente) para cada paciente por um médico.Suponha que cada código de tratamento tenha um custo fixo (independentemente do paciente). Essa relaçãoestá na 2NF? Justifique sua resposta e decomponha, se necessário. Em seguida, discuta se a normalização para3NF é necessária e, em caso afirmativo, realize-a.