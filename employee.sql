create database Employee
use Employee
create table emp(
Enp_id int primary key,
name varchar(20) not null,
department varchar(25) not nul

Exp int not null); 
insert into emp(Enp_id,name,department,Exp) value
(01,'Naruto','Testing',3),
(02,'Hinata','Marketting',2),
(03,'Spunch bob','Developer',4);
select * from emp;

update emp
set name='Ashok',
 department='B.Tech',
Exp=4 where Enp_id=02;

alter table emp
add Salary varchar(30);

update emp
set Salary='50000' where Enp_id=01;

update emp
set Salary='70000' where Enp_id=02;

update emp
set Salary='40000' where Enp_id=03;