-- Exercício 04 Laboratório de Banco de Dados I

-- Questão 01
DROP TABLE AUDITORIA;

CREATE TABLE AUDITORIA (
    DATA DATE,
    NOME VARCHAR2(20),
    CPF VARCHAR2(11),
    SALARIO_ANTERIOR NUMBER (10,2),
    SALARIO_ATUAL NUMBER (10,2),
    USUARIO VARCHAR2(40),
    PRIMARY KEY (CPF, DATA));

CREATE OR REPLACE TRIGGER alteracao_salario
AFTER DELETE OR INSERT OR UPDATE OF Salario
ON Funcionario
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria values(sysdate, :OLD.PRIMEIRO_NOME, :OLD.CPF, :OLD.Salario, :NEW.Salario, user);
END;

-- Testando o Trigger alteracao_salario
UPDATE Funcionario SET Salario = 5000
WHERE CPF = 33344555587;
SELECT * FROM AUDITORIA;


-- Questão 02
--TRIGGER
ALTER TABLE funcionario DISABLE ALL TRIGGERS;

DROP TRIGGER alteracao_salario;
DROP TRIGGER registra_salario_auditoria;

CREATE OR REPLACE TRIGGER registra_salario_auditoria
BEFORE DELETE OR INSERT OR UPDATE OF salario
ON funcionario
FOR EACH ROW
BEGIN
    IF :NEW.salario < 20000 THEN
        :NEW.salario := 20000;
    ELSIF :NEW.salario > 50000 THEN
        :NEW.salario := 50000;
    END IF;
    INSERT INTO auditoria 
    VALUES (sysdate, :OLD.PRIMEIRO_NOME, :OLD.CPF, :OLD.salario, :NEW.salario, user);
END;

-- Testando Trigger registra_salario_auditoria
-- UPDATE
UPDATE funcionario 
SET salario = 10000
WHERE cpf = '99988777767';

UPDATE funcionario SET salario = 80000
WHERE cpf = '66688444476';

SELECT * FROM FUNCIONARIO;

-- Verificando alteracoes de salario
SELECT * FROM AUDITORIA;


-- Questão 03
DROP TRIGGER refletir_qtd_departamento;

ALTER TABLE DEPARTAMENTO ADD QUANTIDADE_FUNCIONARIOS number(5);

UPDATE DEPARTAMENTO D SET QUANTIDADE_FUNCIONARIOS =
    (SELECT count(*) 
     FROM FUNCIONARIO F
     WHERE D.NUMERO_DEPARTAMENTO = F.NUMERO_DEPARTAMENTO);

SELECT * FROM DEPARTAMENTO;

CREATE OR REPLACE TRIGGER refletir_qtd_departamento
BEFORE DELETE OR INSERT OR UPDATE OF cpf
ON funcionario
FOR EACH ROW
BEGIN
    IF DELETING THEN
        Raise_Application_Error(-20001, 'Não é possivel demitir funcionarios!');
    ELSIF INSERTING THEN
        Raise_Application_Error(-20001, 'Não é possivel inserir novos funcionarios!');
    END IF;
END;

-- Testando o Trigger refletir_qtd_departamento
INSERT INTO funcionario 
VALUES ('Jonas', 'I', 'Corre', '12345678901', '10-Fev-2024', 'Av. Amazonas, 614, BH', 'M', '7000', '33344555587', 5);

DELETE FROM funcionario WHERE cpf = 12345678966;

SELECT * FROM FUNCIONARIO;