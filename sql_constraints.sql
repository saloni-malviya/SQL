                                               /* sql constraints*/
/* Not Null constraint */
use college;
create table temp1(
id int not null, 
primary key(id)
);


/* Unique constraint*/
create table temp2(
id int unique
);
insert into temp2 values(101);
insert into temp2 values(102);
select * from temp2;


/* Primary key constraint*/
drop table temp1;
create table temp1(
id int,
name varchar(50),
age int,
city varchar(50),
primary key(id)
);

/* if we have to define the combination of two column as primary key then we write these query */
create table temp3(
id int,
name varchar(50),
age int,
primary key(id,name)
);

insert into temp3 values(101,"shyam", 20),
(101,"Ram",24),
(102,"Ram",25),
(102,"shyam",26);
select*from temp3;


/* Default constraint*/
use college;
create table emp(
id int,
salary int default 25000
);
insert into emp(id) values (101);
select* from emp;


/* check constraint*/
use college;
create table city(
id int primary key,
city varchar(50),
age int,
constraint age_check check (age>=18 and city="delhi")
);
insert into city values(1,"delhi", 25);
insert into city values(3,"delhi", 23);
select * from city;
