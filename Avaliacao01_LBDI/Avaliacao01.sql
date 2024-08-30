-- Avaliação 01 de LBDI

-- Questão 01
-- CRIAÇÃO DE TABELAS
create table INSTITUICAO (nome VARCHAR2(20) NOT NULL,
                          endereco varchar(50),
                          PRIMARY KEY (nome));

create table DEPARTAMENTOS (cod_dep NUMBER(5) NOT NULL,
                            nome VARCHAR2(20),
                            nome_instituicao VARCHAR2(20),
                            quant_pesquisadores NUMBER(5),
                            PRIMARY KEY (cod_dep));

create table PESQUISADOR (cod_dep NUMBER(5),
                          nome VARCHAR2(20),
                          data_nascimento DATE,
                          PRIMARY KEY (cod_dep, nome));

alter table DEPARTAMENTOS add constraint fk_nome_instituicao foreign key (nome_instituicao) references INSTITUICAO(nome) on delete cascade;

alter table PESQUISADOR add constraint fk_cod_dep foreign key (cod_dep) references DEPARTAMENTOS(cod_dep) on delete cascade;

COMMIT;

-- Questão 02a
ALTER TABLE DEPARTAMENTOS DROP CONSTRAINT fk_nome_instituicao;

ALTER TABLE INSTITUICAO DROP PRIMARY KEY;

-- Questão 02b
ALTER TABLE INSTITUICAO ADD cod_instituicao number(5);

INSERT INTO INSTITUICAO VALUES ('CEFET', 'Av amazonas', 1);

alter table INSTITUICAO add constraint pk_cod_instituicao primary key (cod_instituicao);

-- Questão 02c
ALTER TABLE DEPARTAMENTOS DROP COLUMN nome_instituicao;

ALTER TABLE DEPARTAMENTOS ADD cod_instituicao number(5);

alter table DEPARTAMENTOS add constraint fk_cod_instituicao foreign key (cod_instituicao) references INSTITUICAO(cod_instituicao) on delete cascade;

update DEPARTAMENTOS set cod_instituicao=1 where cod_dep=1;

-- Questão 03
CREATE OR REPLACE TRIGGER atualiza_qtd_pesquisadores
AFTER INSERT OR delete ON PESQUISADOR
BEGIN
    IF DELETING THEN
        UPDATE DEPARTAMENTOS
        SET quant_pesquisadores = quant_pesquisadores - 1
        where cod_dep = cod_dep;
    ELSE
        UPDATE DEPARTAMENTOS
        SET quant_pesquisadores = quant_pesquisadores + 1
        where cod_dep = cod_dep;
    END IF;
END;
/