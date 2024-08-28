-- Exercício 06 de Laboratório de Banco de Dados I

-- Questão 02
-- usuário 01
create table ECLBDIT214.MEMBRO ( 
    mat number(12) primary key,
    nome varchar2(40) not null,
    cpf varchar2(11) not null,
    ende varchar2(40) not null,
    data_nasc date not null);

-- usuário 02
create table ECLBDIT214.MEMBRO ( 
    mat number(12) primary key,
    nome varchar2(40) not null,
    cpf varchar2(11) not null,
    ende varchar2(40) not null,
    data_nasc date not null);


-- Questão 03
-- usuário 01
insert into ECLBDIT214.MEMBRO 
values (111, 'Thiago', 11111111111, 'Rua A', '08/10/2001');

-- usuário 02
insert into ECLBDIT202.MEMBRO 
values (222, 'Ana Clara', 22222222222, 'Rua B', '23/07/1999');


-- Questão 04
-- usuário 01
select * from ECLBDIT202.MEMBRO;


-- Questão 05
-- usuário 02
grant select on ECLBDIT202.MEMBRO to ECLBDIT214;

-- usuário 01
select * from ECLBDIT202.MEMBRO;


-- Questão 06
-- usuário 01
insert into ECLBDIT214.MEMBRO values (333, 'Gustavo', 33333333333, 'Rua G', '17/03/2001');

insert into ECLBDIT214.MEMBRO values (444, 'Samuel', 44444444444, 'Rua S', '27/06/2001');

select * from ECLBDIT214.MEMBRO;

select * from ECLBDIT202.MEMBRO;

-- usuário 02
insert into ECLBDIT202.MEMBRO values (555, 'Lucas Fernandes', 55555555555, 'Rua L', '26/05/2000');

insert into ECLBDIT202.MEMBRO values (666, 'Victor Cesar', 66666666666, 'Rua V', '21/02/2000');

select * from ECLBDIT202.MEMBRO;

select * from ECLBDIT214.MEMBRO;


-- Questão 07
-- usuário 01
commit;

select * from ECLBDIT202.MEMBRO;

-- usuário 02
commit;

select * from ECLBDIT214.MEMBRO;


-- Questão 08
-- usuário 01
insert into ECLBDIT214.MEMBRO values (777, 'Joao Pedro', 77777777777, 'Rua J', '23/03/1999');

insert into ECLBDIT214.MEMBRO values (888, 'Mara', 88888888888, 'Rua M', '18/09/1965');

select * from ECLBDIT214.MEMBRO;

-- usuário 02
select * from ECLBDIT214.MEMBRO;


-- Questão 09
-- usuário 01
rollback;

select * from ECLBDIT214.MEMBRO;

-- usuário 02
select * from ECLBDIT214.MEMBRO;


-- Questão 10
-- usuário 01
update ECLBDIT202.MEMBRO set nome='Jose' where mat=111;


-- Questão 11
-- usuário 01
grant update on ECLBDIT214.MEMBRO to ECLBDIT202;

-- usuário 02
grant update on ECLBDIT202.MEMBRO to ECLBDIT214;


-- Questão 12
-- usuário 01
update ECLBDIT202.MEMBRO set nome='Jose' where mat=666;

select * from ECLBDIT202.MEMBRO;

-- usuário 02
select * from ECLBDIT202.MEMBRO;


-- Questão 13
-- usuário 01
commit;

select * from ECLBDIT202.MEMBRO;

-- usuário 02
select * from ECLBDIT202.MEMBRO;

-- Questão 14
-- usuário 01
update ECLBDIT202.MEMBRO 
set nome='Marlene' 
where mat=666;

-- usuário 02
update ECLBDIT202.MEMBRO 
set nome='Gabriel' 
where mat=666;


-- Questão 15
-- usuário 02
rollback;


-- Questão 16
-- usuário 01
update ECLBDIT214.MEMBRO 
set nome='Carol' 
where mat=444;

-- usuário 02
update ECLBDIT214.MEMBRO 
set nome='Morais' 
where mat=444;

-- Questão 17
-- usuário 01
revoke select, update on ECLBDIT214.MEMBRO from ECLBDIT202;

-- usuário 02
select * from ECLBDIT214.MEMBRO;

select * from ECLBDIT202.MEMBRO;