-- Exercício 04 BDI e LBDI

-- Questão 01
-- usando not in
select DEPARTMENT_NAME Departamento
from aluno.DEPARTMENTS
where DEPARTMENT_ID not in (select distinct DEPARTMENT_ID
                            from aluno.EMPLOYEES
                            where DEPARTMENT_ID is not null);

-- usando minus
select d.department_name Departamento 
from departments d minus select d.department_name 
                         from departments d join employees e 
                         on d.department_id = e.department_id;

-- Questão 02
select E.FIRST_NAME Nome, E.LAST_NAME Sobrenome, D.DEPARTMENT_NAME Departamento 
from DEPARTMENTS D inner join EMPLOYEES E 
on D.DEPARTMENT_ID=E.DEPARTMENT_ID;

-- Questão 03
select E.FIRST_NAME Nome, E.LAST_NAME Sobrenome, D.DEPARTMENT_NAME Departamento 
from DEPARTMENTS D right outer join EMPLOYEES E 
on D.DEPARTMENT_ID=E.DEPARTMENT_ID;

-- Questão 04
select E.FIRST_NAME Nome, E.LAST_NAME Sobrenome, D.DEPARTMENT_NAME Departamento 
from EMPLOYEES E left outer join DEPARTMENTS D 
on D.DEPARTMENT_ID=E.DEPARTMENT_ID;

-- Questão 05
select E.FIRST_NAME Nome, E.LAST_NAME Sobrenome, JH.START_DATE Inicio_Data, JH.END_DATE Fim_Data, JH.JOB_ID ID_Trabalho
from EMPLOYEES E left join JOB_HISTORY JH 
on E.EMPLOYEE_ID=JH.EMPLOYEE_ID;

-- Questão 06
select E.FIRST_NAME Nome, E.LAST_NAME Sobrenome, JH.START_DATE Inicio_Data, JH.END_DATE Fim_Data, JH.JOB_ID ID_Cargo, J.JOB_TITLE Nome_Cargo 
from (aluno.EMPLOYEES E left outer join aluno.JOB_HISTORY JH on E.EMPLOYEE_ID=JH.EMPLOYEE_ID) left join aluno.JOBS J 
on JH.JOB_ID = J.JOB_ID;

-- Questão 07
select j.job_title Nome_Cargo 
from jobs j 
where j.job_id in (select distinct e.job_id 
                   from employees e 
                   where e.department_id in (select d.department_id 
                                             from departments d 
                                             where d.location_id in (select l.location_id 
                                                                     from locations l 
                                                                     where l.city='Seattle')));

-- Questão 08
select distinct j.job_title Nome_Cargo 
from locations l join departments d 
on l.location_id=d.location_id join employees e 
on d.department_id=e.department_id join jobs j 
on e.job_id=j.job_id
where l.city='Seattle';