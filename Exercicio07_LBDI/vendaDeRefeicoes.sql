-- Gerado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   em:        2024-08-30 09:31:43 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE avaliacao (
    id_pedido      NUMBER(10) NOT NULL,
    id_cliente     NUMBER(10),
    nota           NUMBER(2),
    comentario     VARCHAR2(100),
    data_avaliacao DATE
);

ALTER TABLE avaliacao ADD CONSTRAINT avaliacao_pk PRIMARY KEY ( id_pedido );

CREATE TABLE categoria (
    id_categoria NUMBER(6) NOT NULL,
    nome         VARCHAR2(20) NOT NULL
);

ALTER TABLE categoria ADD CONSTRAINT categoria_pk PRIMARY KEY ( id_categoria );

CREATE TABLE cliente (
    id_cliente NUMBER(10) NOT NULL,
    cpf_pessoa NUMBER(11) NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( id_cliente );

CREATE TABLE empresa (
    cnpj NUMBER(14) NOT NULL,
    nome VARCHAR2(30) NOT NULL
);

ALTER TABLE empresa ADD CONSTRAINT empresa_pk PRIMARY KEY ( cnpj );

CREATE TABLE endereco_empresa (
    cnpj_empresa NUMBER(14) NOT NULL,
    endereco     VARCHAR2(50) NOT NULL,
    numero       NUMBER(6) NOT NULL,
    bairro       VARCHAR2(30) NOT NULL,
    cidade       VARCHAR2(30) NOT NULL,
    estado       VARCHAR2(30) NOT NULL
);

ALTER TABLE endereco_empresa
    ADD CONSTRAINT endereco_empresa_pk PRIMARY KEY ( endereco,
                                                     cnpj_empresa,
                                                     numero );

CREATE TABLE endereco_pessoa (
    cpf_pessoa NUMBER(11) NOT NULL,
    endereco   VARCHAR2(50) NOT NULL,
    numero     NUMBER(6) NOT NULL,
    bairro     VARCHAR2(30) NOT NULL,
    cidade     VARCHAR2(30) NOT NULL,
    estado     VARCHAR2(30) NOT NULL
);

ALTER TABLE endereco_pessoa
    ADD CONSTRAINT endereco_pessoa_pk PRIMARY KEY ( cpf_pessoa,
                                                    endereco,
                                                    numero );

CREATE TABLE entregador (
    id_entregador NUMBER(10) NOT NULL,
    cpf_pessoa    NUMBER(11) NOT NULL,
    veiculo       VARCHAR2(30) NOT NULL,
    placa_veiculo VARCHAR2(7)
);

ALTER TABLE entregador ADD CONSTRAINT entregador_pk PRIMARY KEY ( id_entregador );

CREATE TABLE item_pedido (
    id_item        NUMBER(3) NOT NULL,
    id_refeicao    NUMBER(10) NOT NULL,
    id_pedido      NUMBER(10) NOT NULL,
    quantidade     NUMBER(3) NOT NULL,
    preco_unitario NUMBER NOT NULL
);

ALTER TABLE item_pedido ADD CONSTRAINT item_pedido_pk PRIMARY KEY ( id_item,
                                                                    id_pedido );

CREATE TABLE pedido (
    id_pedido      NUMBER(10) NOT NULL,
    id_cliente     NUMBER(10) NOT NULL,
    tipo_pagamento VARCHAR2(15) NOT NULL,
    valor_total    NUMBER NOT NULL,
    data_pedido    DATE NOT NULL,
    status         VARCHAR2(20),
    id_entregador  NUMBER(10)
);

ALTER TABLE pedido ADD CONSTRAINT pedido_pk PRIMARY KEY ( id_pedido );

CREATE TABLE pessoa (
    cpf            NUMBER(11) NOT NULL,
    nome           VARCHAR2(50) NOT NULL,
    telefone       NUMBER(11) NOT NULL,
    senha          VARCHAR2(20) NOT NULL,
    email          VARCHAR2(50) NOT NULL,
    tipo           NUMBER(10) NOT NULL,
    id_tipo_pessoa NUMBER(5) NOT NULL
);

ALTER TABLE pessoa ADD CONSTRAINT pessoa_pk PRIMARY KEY ( cpf );

CREATE TABLE refeicao (
    id_refeicao     NUMBER(10) NOT NULL,
    nome            VARCHAR2(30) NOT NULL,
    descricao       VARCHAR2(150),
    preco           NUMBER NOT NULL,
    status_refeicao VARCHAR2(20) NOT NULL,
    id_categoria    NUMBER(6) NOT NULL,
    imagem          BLOB,
    cnpj_empresa    NUMBER(14) NOT NULL
);

ALTER TABLE refeicao ADD CONSTRAINT refeicao_pk PRIMARY KEY ( id_refeicao );

CREATE TABLE tipo_pessoa (
    id_tipo   NUMBER(5) NOT NULL,
    descricao VARCHAR2(30) NOT NULL
);

ALTER TABLE tipo_pessoa ADD CONSTRAINT tipo_pessoa_pk PRIMARY KEY ( id_tipo );

ALTER TABLE avaliacao
    ADD CONSTRAINT avaliacao_pedido_fk FOREIGN KEY ( id_pedido )
        REFERENCES pedido ( id_pedido )
            ON DELETE CASCADE;

ALTER TABLE cliente
    ADD CONSTRAINT cliente_pessoa_fk FOREIGN KEY ( cpf_pessoa )
        REFERENCES pessoa ( cpf );

ALTER TABLE endereco_empresa
    ADD CONSTRAINT endereco_empresa_empresa_fk FOREIGN KEY ( cnpj_empresa )
        REFERENCES empresa ( cnpj );

ALTER TABLE endereco_pessoa
    ADD CONSTRAINT endereco_pessoa_fk FOREIGN KEY ( cpf_pessoa )
        REFERENCES pessoa ( cpf )
            ON DELETE CASCADE;

ALTER TABLE entregador
    ADD CONSTRAINT entregador_pessoa_fk FOREIGN KEY ( cpf_pessoa )
        REFERENCES pessoa ( cpf );

ALTER TABLE item_pedido
    ADD CONSTRAINT item_pedido_pedido_fk FOREIGN KEY ( id_pedido )
        REFERENCES pedido ( id_pedido );

ALTER TABLE item_pedido
    ADD CONSTRAINT item_pedido_refeicao_fk FOREIGN KEY ( id_refeicao )
        REFERENCES refeicao ( id_refeicao );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_cliente_fk FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_entregador_fk FOREIGN KEY ( id_entregador )
        REFERENCES entregador ( id_entregador );

ALTER TABLE refeicao
    ADD CONSTRAINT refeicao_categoria_fk FOREIGN KEY ( id_categoria )
        REFERENCES categoria ( id_categoria );

ALTER TABLE refeicao
    ADD CONSTRAINT refeicao_empresa_fk FOREIGN KEY ( cnpj_empresa )
        REFERENCES empresa ( cnpj );

ALTER TABLE pessoa
    ADD CONSTRAINT tipo_pessoa_fk FOREIGN KEY ( id_tipo_pessoa )
        REFERENCES tipo_pessoa ( id_tipo );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             0
-- ALTER TABLE                             24
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
