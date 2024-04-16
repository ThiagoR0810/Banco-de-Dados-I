-- Criando as tabelas
create table FUNCIONARIO
             (Primeiro_nome varchar2(20),
              Nome_meio varchar2(20),
              Ultimo_nome varchar2(20),
              Cpf number(11),
              Data_nascimento date,
              Endereco varchar2(30),
              Sexo varchar2(15),
              Salario number(10,2),
              Cpf_supervisor number(11),
              Numero_departamento number(3));

create table DEPARTAMENTO
             (Nome_departamento varchar2(20),
              Numero_departamento number(3),
              Cpf_gerente number(11),
              Data_inicio_gerente date);

create table LOCALIZACOES_DEPARTAMENTO
             (Numero_departamento number(3),
              Local varchar2(30));
    
create table PROJETO
             (Nome_projeto varchar2(30),
              Numero_projeto number(5),
              Local_projeto varchar2(30),
              Numero_departamento number(3));

create table TRABALHA_EM
             (Cpf_funcionario number(11),
              Numero_projeto number(5),
              Horas int);

create table DEPENDENTE
             (Cpf_funcionario number(11),
              Nome_dependente varchar2(50),
              Sexo varchar2(15),
              Data_nascimento date,
              Parentesco varchar2(15));

-- Adicionando as chaves primárias
alter table FUNCIONARIO
            add constraint funcionario_pk primary key (Cpf);

alter table DEPARTAMENTO
            add constraint departamento_pk primary key (Numero_departamento);

alter table LOCALIZACOES_DEPARTAMENTO
            add constraint localizacoes_departamento_pk primary key (Numero_departamento, Local);

alter table PROJETO
            add constraint projeto_pk primary key (Numero_projeto);

alter table TRABALHA_EM
            add constraint trabalha_em_pk primary key (Cpf_funcionario, Numero_projeto);

alter table DEPENDENTE
            add constraint dependente_pk primary key (Cpf_funcionario, Nome_dependente);


-- Adicionando as chaves estrangeiras
alter table FUNCIONARIO
            add constraint funcionario_fk1 foreign key (Cpf_supervisor) 
                                           references FUNCIONARIO(Cpf);

alter table FUNCIONARIO
            add constraint funcionario_fk2 foreign key (Numero_departamento) 
                                           references DEPARTAMENTO(Numero_departamento);

alter table DEPARTAMENTO
            add constraint departamento_fk1 foreign key (Cpf_gerente) 
                                            references FUNCIONARIO(Cpf);

alter table LOCALIZACOES_DEPARTAMENTO
            add constraint localizacoes_departamento_fk1 foreign key (Numero_departamento) 
                                                         references DEPARTAMENTO(Numero_departamento)
                                                         on delete cascade;

alter table PROJETO
            add constraint projeto_fk1 foreign key (Numero_departamento) 
                                       references DEPARTAMENTO(Numero_departamento);
                            
alter table TRABALHA_EM
            add constraint trabalha_em_fk1 foreign key (Cpf_funcionario) 
                                           references FUNCIONARIO(Cpf)
                                           on delete cascade;

alter table DEPENDENTE
            add constraint dependente_fk1 foreign key (Cpf_funcionario) 
                                           references FUNCIONARIO(Cpf)
                                           on delete cascade;


alter table FUNCIONARIO
            modify Endereco varchar(50);
alter table TRABALHA_EM
            modify Horas number(5,1);

-- Inserindo dados nas tabelas

-- Inserindo funcionários
insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario, Cpf_Supervisor)
values ('João', 'B', 'Silva', 12345678966, '09-Jan-1965', 'Rua das Flores, 751, São Paulo, SP', 'M', 30000, 33344555587);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('Fernando', 'T', 'Wong', 33344555587, '08-Dez-1955', 'Rua da Lapa, 34, São Paulo, SP', 'M', 40000);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('Alice', 'J', 'Zelaya', 99988777767, '19-Jan-1968', 'Rua Souza Lima, 35, Curitiba, PR', 'F', 25000);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('Jennifer', 'S', 'Souza', 98765432168, '20-Jun-1941', 'Av. Arthur de Lima, 54, Santo André, SP', 'F', 43000);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('Ronaldo', 'K', 'Lima', 66688444476, '15-Set-1962', 'Rua Rebouças, 65, Piracicaba, SP', 'M', 38000);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('Joice', 'A', 'Leite', 45345345376, '31-Jul-1972', 'Av. Lucas Obes, 74, São Paulo, SP', 'F', 25000);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('ANdré', 'V', 'Pereira', 98798798733, '29-Mar-1969', 'Rua Timbira, 35, São Paulo, SP', 'M', 25000);

insert into FUNCIONARIO (Primeiro_nome, Nome_meio, Ultimo_nome, Cpf, Data_nascimento, Endereco, Sexo, Salario)
values ('Jorge', 'E', 'Brito', 88866555576, '10-Nov-1937', 'Rua do Horto, 35, São Paulo, SP', 'M', 55000);

-- Inserindo Supervisores
update FUNCIONARIO 
set Cpf_supervisor = 33344555587
where Cpf = 12345678966;

update FUNCIONARIO 
set Cpf_supervisor = 88866555576
where Cpf = 33344555587;

update FUNCIONARIO 
set Cpf_supervisor = 98765432168
where Cpf = 99988777767;

update FUNCIONARIO 
set Cpf_supervisor = 88866555576
where Cpf = 98765432168;

update FUNCIONARIO 
set Cpf_supervisor = 33344555587
where Cpf = 66688444476;

update FUNCIONARIO 
set Cpf_supervisor = 33344555587
where Cpf = 45345345376;

update FUNCIONARIO 
set Cpf_supervisor = 98765432168
where Cpf = 98798798733;


-- Inserindo Departamentos
insert into DEPARTAMENTO (Nome_departamento, Numero_departamento, Cpf_gerente, Data_inicio_gerente)
values ('Pesquisa', 5, 33344555587, '22-Mai-1988');

insert into DEPARTAMENTO (Nome_departamento, Numero_departamento, Cpf_gerente, Data_inicio_gerente)
values ('Administração', 4, 98765432168, '01-Jan-1995');

insert into DEPARTAMENTO (Nome_departamento, Numero_departamento, Cpf_gerente, Data_inicio_gerente)
values ('Matriz', 1, 88866555576, '19-Jun-1981');


-- Inserindo localizações dos departamentos
insert into LOCALIZACOES_DEPARTAMENTO(Numero_departamento, Local)
values (1, 'São Paulo');

insert into LOCALIZACOES_DEPARTAMENTO(Numero_departamento, Local)
values (4, 'Mauá');

insert into LOCALIZACOES_DEPARTAMENTO(Numero_departamento, Local)
values (5, 'Santo André');

insert into LOCALIZACOES_DEPARTAMENTO(Numero_departamento, Local)
values (5, 'Itu');

insert into LOCALIZACOES_DEPARTAMENTO(Numero_departamento, Local)
values (5, 'São Paulo');

-- Inserindo Departamento na tabela FUNCIONARIOS
update FUNCIONARIO
set Numero_departamento = 5
where Cpf = 12345678966 or Cpf = 33344555587 or Cpf = 66688444476 or Cpf = 45345345376;

update FUNCIONARIO
set Numero_departamento = 1
where Cpf = 88866555576;

update FUNCIONARIO
set Numero_departamento = 4
where Cpf = 99988777767 or Cpf = 98765432168 or Cpf = 98798798733;


-- Inserindo projetos
insert into PROJETO
values ('ProdutoX', 1, 'Santo André', 5);

insert into PROJETO
values ('ProdutoY', 2, 'Itu', 5);

insert into PROJETO
values ('ProdutoZ', 3, 'São Paulo', 5);

insert into PROJETO
values ('Informatização', 10, 'Mauá', 4);

insert into PROJETO
values ('Reorganização', 20, 'São Paulo', 1);

insert into PROJETO
values ('Novosbeneficios', 30, 'Mauá', 4);

-- Inserindo dados na tabela TRABALHA_EM
insert into TRABALHA_EM
values (12345678966, 1, 32.5);

insert into TRABALHA_EM
values (12345678966, 2, 7.5);

insert into TRABALHA_EM
values (66688444476, 3, 40.0);

insert into TRABALHA_EM
values (45345345376, 1, 20.0);

insert into TRABALHA_EM
values (45345345376, 2, 20.0);

insert into TRABALHA_EM
values (33344555587, 2, 10.0);

insert into TRABALHA_EM
values (33344555587, 3, 10.0);

insert into TRABALHA_EM
values (33344555587, 10, 10.0);

insert into TRABALHA_EM
values (33344555587, 20, 10.0);

insert into TRABALHA_EM
values (99988777767, 30, 30.0);

insert into TRABALHA_EM
values (99988777767, 10, 10.0);

insert into TRABALHA_EM
values (98798798733, 10, 35.0);

insert into TRABALHA_EM
values (98798798733, 30, 5.0);

insert into TRABALHA_EM
values (98765432168, 30, 20.0);

insert into TRABALHA_EM
values (98765432168, 20, 15.0);

insert into TRABALHA_EM (Cpf_funcionario, Numero_projeto)
values (88866555576, 30);


-- Inserindo Dependentes
insert into DEPENDENTE
values (33344555587, 'Alicia', 'F', '05-Abr-1986', 'Filha');

insert into DEPENDENTE
values (33344555587, 'Tiago', 'M', '25-Out-1983', 'Filho');

insert into DEPENDENTE
values (33344555587, 'Janaina', 'F', '03-Mai-1958', 'Esposa');

insert into DEPENDENTE
values (98765432168, 'Antonio', 'M', '28-Fev-1942', 'Marido');

insert into DEPENDENTE
values (12345678966, 'Michael', 'M', '04-Jan-1988', 'Filho');

insert into DEPENDENTE
values (12345678966, 'Alicia', 'F', '30-Dez-1988', 'Filha');

insert into DEPENDENTE
values (12345678966, 'Elizabeth', 'F', '05-Mai-1967', 'Esposa');


-- Mostrando todas as tabelas com os dados inseridos
select * from FUNCIONARIO;

select * from DEPARTAMENTO;

select * from PROJETO;

select * from LOCALIZACOES_DEPARTAMENTO;

select * from TRABALHA_EM;

select * from DEPENDENTE;