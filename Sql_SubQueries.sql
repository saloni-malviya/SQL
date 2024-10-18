/*..............................................SQL SUB QUERIES.......................................................*/
/*....  A subquery or inner query is a query within another sql query. It involve 2 select statement.............*/
use clg;
create table students(
rollno int primary key,
name varchar(50),
marks int 
);
insert into students values(101,"Anil",78),(102,"bhumika",93),(103,"chetan",85),(104,"dhruv",96),(105,"farah",92),(106,"simmi",82);
select * from students;


/*1.  Get names of all students who scored more than class average */

select avg(marks) from students;
select name,marks from students where marks>(select avg(marks) from students);
 
 /*2.  Find the names of all students with even roll numbers */
 
 select rollno from students where rollno%2=0;
 select name,rollno from students where rollno in (select rollno from students where rollno%2=0);
 
 /*3. Find the maximum marks from the students of Pune  */
 select * from student;
 select max(marks) from ( select * from student where city = "Pune")as temp;
 /* OR */
 select max(marks) from student where city="Pune";
 