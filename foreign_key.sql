/* FOREIGN KEY CONCEPT */
create database customer;
use customer;
create table customers(
id int not null,
name varchar(50)
);
insert into customers values(101,"A"),
(102,"B"),
(103,"C"),
(104,"D");
select * from customers;

alter table customers modify id int primary key;

create table temp(
id int primary key,
customer_office varchar(50),
customer_id int,
salary int,
foreign key(customer_id) references customers(id)
);

select * from temp;

/* foriegn key */
/* we have two tables department and teacher, in dept table we have two field id, name and teacher table we have three fields id, name, deptid
the deptid in teacher table is foreign key of id in dept table */

use clg;
create table dept(
id int primary key,
name varchar(50)
);
insert into dept values (101, "Science"),
(102,"English"), (103,"Hindi");

create table teacher(
id int primary key,
teacher_name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)
on update cascade
on delete cascade
);
insert into teacher values(101, "Adam", 101),
(102,"Barry",103), (103,"Cassy",102),(104,"Donald",102);

select * from teacher;
select * from dept;

/* on update cascade and on delete cascade example */
/* if we create a foreign key using update cascade, the referencing rows are updated in child table when the referenced row is updated
 in parent table which has aprimary key*/
update dept set id=105 where id=102;
select * from teacher;
select * from dept;


 