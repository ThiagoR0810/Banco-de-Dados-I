-- Exercício 01 de Banco de Dados I

-- Questão 01

select FIRST_NAME, LAST_NAME, to_char(HIRE_DATE, 'DD-Month-YYYY') data_admissao
from ALUNO.EMPLOYEES
where substr(LAST_NAME, 1, 1) = 'R';

-- Questão 02

select concat(concat(FIRST_NAME, ' '), LAST_NAME) nome_completo, d.DEPARTMENT_NAME
from ALUNO.EMPLOYEES e join ALUNO.DEPARTMENTS d 
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where lower(d.DEPARTMENT_NAME) = 'executive';

select DEPARTMENT_NAME 
from ALUNO.DEPARTMENTS;

-- Questão 03

select FIRST_NAME || ' ' || LAST_NAME nome_completo, to_char(HIRE_DATE, 'DD-Month-YYYY') data_admissao
from ALUNO.EMPLOYEES
where to_char(HIRE_DATE, 'YYYY') = '1999';

-- Questão 04

select FIRST_NAME || ' ' || LAST_NAME nome_completo, round(SALARY/30) salario_diario, SALARY*12 salario_anual
from ALUNO.EMPLOYEES
where COMMISSION_PCT is not null;

-- Questão 05

select FIRST_NAME || ' ' || LAST_NAME nome_completo, SALARY salario_mensal, 
       SALARY*(1 + nvl(COMMISSION_PCT, 0)) salario_comissao
from ALUNO.EMPLOYEES;

-- Questão 06

select substr(e.FIRST_NAME, 1, 1) inicial_nome, substr(e.LAST_NAME, 1, 1) inicial_sobrenome, d.DEPARTMENT_NAME
from ALUNO.EMPLOYEES e join ALUNO.DEPARTMENTS d
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.EMPLOYEE_ID = d.MANAGER_ID;

-- Questão 07

select FIRST_NAME || ' ' || LAST_NAME nome_completo, 
       round(months_between(SYSDATE, HIRE_DATE)/12) anos_na_empresa,
       round(months_between(SYSDATE, HIRE_DATE)) meses_na_empresa
from ALUNO.EMPLOYEES;

-- Questão 08

select round(avg(e.SALARY)) media_salario,
       max(e.SALARY) maior_salario,
       min(e.SALARY) menor_salario,
       d.DEPARTMENT_NAME
from ALUNO.EMPLOYEES e join ALUNO.DEPARTMENTS d 
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by e.DEPARTMENT_ID, d.DEPARTMENT_NAME;

-- Questão 09

select d.DEPARTMENT_NAME, count(*) qtd_empregados
from ALUNO.EMPLOYEES e join ALUNO.DEPARTMENTS d 
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where substr(lower(e.JOB_ID), 4, 5) = 'clerk'
group by d.DEPARTMENT_NAME;