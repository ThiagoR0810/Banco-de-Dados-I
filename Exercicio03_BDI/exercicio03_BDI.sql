-- Exercício 03 de Banco de Dados I

-- Questão 01

create table TIME
             (ID number(2),
              NOME varchar2(30));
    
create table JOGO
             (DATA date,
              PLACAR_CASA number(2),
              PLACAR_VISITANTE number(2));

create table JOGADOR
             (CPF number(11),
              NOME varchar2(30));

-- Questão 02

insert into TIME
values (01, 'Atlético-MG');

insert into TIME
values (02, 'Barcelona');

insert into TIME
values (03, 'América-MG');

select * from TIME;

insert into JOGO
values ('01-Jan-2001', 5, 0);

insert into JOGO
values ('02-Fev-2010', 3, 4);

insert into JOGO
values ('03-Out-2022', 1, 1);

select * from JOGO;

insert into JOGADOR
values (12345678900, 'Messi');

insert into JOGADOR
values (98765432113, 'Hulk');

insert into JOGADOR
values (45645645688, 'Juninho');

select * from JOGADOR;

-- Questão 03

alter table TIME
add constraint time_pk primary key (ID);

alter table JOGADOR
add constraint jogador_pk primary key (CPF);

-- Questão 04

alter table JOGO
add ID_CASA number(2);

alter table JOGO
add ID_VISITANTE number(2);

alter table JOGADOR
add ID_TIME number(2);

alter table JOGO
add constraint jogo_fk1 foreign key (ID_CASA)
               references TIME (ID) on delete cascade;

alter table JOGO
add constraint jogo_fk2 foreign key (ID_VISITANTE)
               references TIME (ID) on delete cascade;

alter table JOGADOR
add constraint jogador_fk1 foreign key (ID_TIME)
               references TIME (ID);

-- Questão 05

select * from TIME;

select * from JOGO;

select * from JOGADOR;

update JOGADOR 
set ID_TIME = 2
where CPF = 12345678900;

update JOGADOR 
set ID_TIME = 1
where CPF = 98765432113;

update JOGADOR 
set ID_TIME = 3
where CPF = 45645645688;

update JOGO
set ID_CASA = 1, ID_VISITANTE = 3
where PLACAR_CASA = 5 AND PLACAR_VISITANTE = 0;

update JOGO
set ID_CASA = 2, ID_VISITANTE = 3
where PLACAR_CASA = 3 AND PLACAR_VISITANTE = 4;

update JOGO
set ID_CASA = 1, ID_VISITANTE = 2
where PLACAR_CASA = 1 AND PLACAR_VISITANTE = 1;

-- Questão 06

alter table JOGO
add constraint jogo_pk primary key (DATA, ID_CASA, ID_VISITANTE);

-- Questão 07

alter table JOGADOR 
modify ID_TIME number(2) not null;

-- Questão 08

alter table JOGADOR
add unique (NOME);

-- Questão 09

insert into JOGADOR 
values (99999999910, 'Zaracho', 1);

insert into JOGO
values ('02-Jan-2001', 2, 2, 1, 3);

insert into JOGO
values ('01-Jan-2001', 4, 1, 2, 3);

select * from JOGADOR;

select * from TIME;

select * from JOGO;