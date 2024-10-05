/* Basic Sql query to create table, insert data and fetch data */
use college;
create table student(
rollno int primary key,
name varchar(50)
);

select rollno from student;
insert into student 
(rollno,name)
 values
 (12,"Ramesh"),(13,"Arjun");
 
 select * from student;

