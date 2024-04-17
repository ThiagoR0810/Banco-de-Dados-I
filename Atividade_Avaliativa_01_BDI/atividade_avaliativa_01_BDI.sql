-- Atividade Avaliativa 01 de Banco de Dados I

-- Questão 01

select LAST_NAME, HIRE_DATE
from ALUNO.EMPLOYEES
where substr(LAST_NAME,1,1) = 'R';

select * from ALUNO.EMPLOYEES;

-- Questão 02

select FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || LAST_NAME nome_completo, DEPARTMENT_ID
from ALUNO.EMPLOYEES
where DEPARTMENT_ID = 60;

-- Questão 03

select DEPARTMENT_NAME, upper(DEPARTMENT_NAME) nome_departamento_maiusculas
from ALUNO.DEPARTMENTS
where DEPARTMENT_ID = 60;

select * from ALUNO.DEPARTMENTS;

-- Questão 04

select FIRST_NAME || ' ' || LAST_NAME nome_completo, HIRE_DATE
from ALUNO.EMPLOYEES
where to_char(HIRE_DATE, 'YYYY') = '1999';

-- Questão 05

select FIRST_NAME, SALARY, SALARY*12 salario_anual
from ALUNO.EMPLOYEES
where SALARY > 4000 and SALARY < 7000;

-- Questão 06

select e.FIRST_NAME || ' ' || e.LAST_NAME nome_completo, d.DEPARTMENT_NAME 
from ALUNO.EMPLOYEES e join ALUNO.DEPARTMENTS d
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
Where d.DEPARTMENT_NAME = 'Shipping';

-- Questão 07

select e.FIRST_NAME || ' ' || e.LAST_NAME nome_completo, d.DEPARTMENT_NAME, e.SALARY, e.HIRE_DATE
from ALUNO.EMPLOYEES e join ALUNO.DEPARTMENTS d
     on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_NAME = 'Shipping' and e.SALARY > 5000 and e.SALARY < 8000 and
      (to_char(HIRE_DATE, 'YYYY') = '1997' or to_char(HIRE_DATE, 'YYYY') = '1998' or to_char(HIRE_DATE, 'YYYY') = '1999');

-- Questão 08
/*
select FIRST_NAME || ' ' || LAST_NAME nome_completo, EMPLOYEE_ID
from ALUNO.EMPLOYEES
where (FIRST_NAME || ' ' || LAST_NAME) = 'Steven King';
*/

select FIRST_NAME || ' ' || LAST_NAME nome_completo, MANAGER_ID
from ALUNO.EMPLOYEES
where MANAGER_ID = (select EMPLOYEE_ID
                    from ALUNO.EMPLOYEES
                    where (FIRST_NAME || ' ' || LAST_NAME) = 'Steven King');