create database db1;
create table employee(
emp_id int primary key,
emp_desc varchar(20),
salary int
);
alter table employee add column ename varchar(20) after emp_id;
describe employee;

insert into employee values(1,"Ram","ADMIN",1000000),
(2,"Harini","MANAGER",2500000),
(3,"Georgr","SALES",2000000),
(4,"Ramya","SALES",1300000),
(5,"Meena","HR",2000000),
(6,"Ashok","MANAGER",3000000),
(7,"Abdul","HR",2000000),
(8,"Ramya","ENGINEER",1000000),
(9,"Raghu","CEO",8000000),
(10,"Akshay","ENGINEER",1000000),
(11,"John","ADMIN",2200000),
(12,"Abinaya","ENGINEER",2000000);

select * from employee;

select distinct salary from employee;

select * from employee order by salary;
select * from employee 
where emp_desc="engineer"
order by salary,ename;

select count(*) count from employee 
where salary>2000000;
select max(salary)  from employee ;

select  min(salary)  from employee ;

select sum(salary)  from employee ;

select concat('Rs. ',format(avg(salary),2)) average from employee ;

select ename,left(emp_desc,3) from employee ;

select ucase(ename) ename,emp_desc from employee;

alter table employee add column HireDate Date;

select * from employee;

update employee
set HireDate="2023-8-11";

update employee
set HireDate="2023-6-11"
where emp_desc="engineer";

update employee
set HireDate="2023-7-11"
where emp_desc="HR";

select * from employee order by hiredate,ename;

select emp_desc,sum(salary) from employee
group by emp_desc;

select emp_desc,max(salary) from employee
group by emp_desc;

select emp_desc, count(emp_id)from employee
group by emp_desc
having count(emp_id)<2;

create table Branch(
branch_id int primary key auto_increment,
branch_name varchar(10) not null,
address varchar(100)

);
