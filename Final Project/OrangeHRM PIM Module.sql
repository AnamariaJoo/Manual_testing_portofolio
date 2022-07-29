/* crearea bazei de date si instructiunea de a folosi aceasta baza de date*/
create database orangeHrmPIM;
use orangeHrmPIM;
/* creare tabelei "supervisors" cu coloanele si tipurile de date aferente*/
create table supervisors (
supervisorId int not null auto_increment primary key,
fullName varchar (50) not null,
dateOfBirth date,
department varchar(35) not null
);
desc supervisors; /*descriere structura tabela supervisors*/
/* inserare valori pe coloanele din tabela supervisors*/
insert into supervisors (fullName, dateOfBirth, department)
values ('John Smith','1975-03-18', 'Administration'),
('Linda Jane Anderson','1979-01-05','Sales'),
('Paularavindh Collings','1968-05-25','Human Resources'),
('Cassidy Hope','1978-06-10','TechOps'),
('Anthony Nolan','1975-02-02','Sales'),
('Fiona Grace','1977-10-25','Development'),
('Melan Peiris','1982-12-30','	Marketing'),
('Aaliyah Haq','1979-10-03','Quality Assurance'),
('Dominic Chase','1979-10-03','Technical Support'),
('Kevin Mathews','1980-03-12','Finance');
select * from supervisors; /* selectare intreaga tabela supervisors*/
/* creare tabelei "employeeList" cu coloanele si tipurile de date aferente*/
create table employeeList (
employeeId int not null auto_increment primary key,
firstName varchar(25) not null,
lastName varchar(25) not null,
jobTitle varchar(35) not null
);
desc employeeList; /*descriere structura tabela employeeList*/
/* modificarea structurii tabelei employeeList : adaugare, modificare, stergere coloane, adaugare foreign key*/
alter table employeeList add column employmentStatus varchar(30) not null;
alter table employeeList add column supervisorId int; 
alter table employeeList add column age int;
alter table employeeList drop age;
alter table employeeList modify supervisorId int not null;
alter table employeeList add foreign key (supervisorId) references supervisors(supervisorId) ;
/*inserare valori pe coloanele din tabela employeeList*/
insert into employeeList (firstName, lastName, jobTitle, employmentStatus, supervisorId)
values ('Odis', 'Adalwin', 'Engineer', 'Permanent', 1),
('Peter', 'Anderson', 'Chief Financial Officer', 'Probation', 1),
('Linda', 'Anderson', 'Sales', 'Permanent', 1),
('Lisa', 'Andrews', 'Software Engineer', 'Probation', 6),
('Cecil', 'Bonaparte', 'Software Engineer', 'Permanent', 6),
('Charlie', 'Carter', 'QA Engineer', 'Probation',8),
('Dominic', 'Chase', 'Client Services', 'Permanent', 1),
('Chenzira', 'Chuki', 'QA Engineer', 'Permanent', 8),
('Paul', 'Collings', 'HR Manager', 'Permanent', 1),
('Alice', 'Duval', 'Account Assistant', 'Permanent', 10);
select * from employeeList; /*selectare intreaga tabela employeeList*/
create table reportingMethod (name varchar(25) not null); /*creare tabela "reportingMethod"*/
desc reportingMethod;
insert into reportingMethod values ('Direct'), ('Indirect'),('Monthly'),('Quarterly'); /*adaugare valori in tabela reportingMethod*/
select * from reportingMethod;
update employeeList set supervisorId = '9' where lastName = 'Duval'; /*modificare valori in functie de o filtrare*/
delete from supervisors where department = 'Sales'; /*stergere valori din tabela supervisors in functie de o filtrare*/
truncate table reportingMethod; /*stergerea inregistrarilor din tabela reportingMethod*/
select firstName, lastName, jobTitle from employeeList; /*selectarea mai multor coloane*/
select firstName from employeeList where employmentStatus = 'Probation'; /*selectarea valorilor unei coloane in functie de o conditie*/
select * from supervisors where dateOfBirth like '1980%' and department = 'Finance'; /*selectarea valorilor din tabela in functie de 2 conditii ce trebuie indeplinite simultan*/
select * from employeeList where (lastName like '%a%' or supervisorId <>1) and jobTitle like '%Engineer'; /* selectarea valorilor din tabela in functie de mai multe conditii*/
insert into employeeList (firstName, lastName, jobTitle, employmentStatus, supervisorId) values ('Amanda', 'Mitchel', 'QA Engineer', 'Probation', 4); /*adaugare valori in tabela*/
select count(firstName) from employeeList; /*numarul total de inregistrari pe coloana fisrtName*/
/*numarul de employees grupati pe supervisors, folosind si alias-uri*/
select s.supervisorId, fullName, count(employeeId)
from supervisors s inner join employeeList e on s.supervisorId = e.supervisorId
group by s.supervisorId, fullName;
select employmentStatus, count(*) from employeeList group by employmentStatus; /*numarul de employees grupati pe employmentStatus*/
select * from supervisors cross join employeeList, reportingMethod; /*cumularea celor 2 tabele, cu toate combinatiile posibile intre inregistrari*/
select * from supervisors inner join employeeList on supervisors.supervisorId = employeeList.supervisorId; /*aducerea informatiilor din cele 2 tabele in functie de o conditie*/
/*aducerea datelor din prima tabela, si completarea ei cu informatiile din a doua tabela in functie de mai multe conditii */ 
select * from employeeList left join supervisors on employeeList.supervisorId = supervisors.supervisorId where employeeList.employmentStatus='Permanent';