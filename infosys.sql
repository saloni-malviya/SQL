/* create a database for your company named infosys.*/

create database infosys;
use infosys;

/*1. create a table inside this database to store employee information(id,name, salary)*/
/* add following information in database : (1,adam, 25000),(2,"bob", 30000) (3,"casey", 40000) (4,"siomym", 35000) (5,"ramesh", 55000)*/
create table employee(
id int primary key,
name varchar(50),
salary int
);

insert into employee values(1,"Adam", 25000);
insert into employee values(2,"bob", 30000);
insert into employee values(3,"casey", 40000);
insert into employee values(4,"siomym", 35000);
insert into employee values(5,"ramesh", 55000);

/*select and view all table data */
select * from employee;

/* count ids of employee*/
select count(id) from employee;

/* find third highest salary of employee */
select * from employee order by salary desc limit 1 offset 2;

/* highest salary among all employee */
select max(salary) from employee ;


