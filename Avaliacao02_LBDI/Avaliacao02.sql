-- Avaliação 02 de LBDI

-- Questão 01
create table Cliente (id_cliente NUMBER(3) PRIMARY KEY NOT NULL,
                      nome_cliente VARCHAR2(30) NOT NULL);

create table Pedido (id_pedido NUMBER(3) PRIMARY KEY NOT NULL,
                     id_cliente NUMBER(3) NOT NULL,
                     item VARCHAR2(50) NOT NULL,
                     qtd_item NUMBER(5) NOT NULL,
                     valor_item NUMBER(5) NOT NULL);

Alter table Pedido add constraint fk_pedido FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente);

Insert into Cliente VALUES(1, 'Thiago Ribeiro');
Insert into Cliente VALUES(2, 'Ana Clara');
Insert into Pedido VALUES(11, 1, 'Arroz', 1, 40);
Insert into Pedido VALUES(22, 2, 'Feijão', 1, 20);

commit;

select * from cliente;
select * from pedido;

-- Questão 02a
select * from countries
where country_id = 52771;

-- Questão 02b
create index country_id_index on countries(country_id);

select * from countries
where country_id = 52771;

-- Questão 02c
select cs.cust_id, cs.cust_first_name, cs.cust_last_name, cs.cust_city, ct.country_name
from COUNTRIES ct join sh.customers cs on ct.country_id=cs.country_id
where ct.country_id=52771;