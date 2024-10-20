create database sql_join;
use sql_join;
create table student(
student_id int primary key,
name varchar(50)
);
select * from student;

create table course(
student_id int primary key,
course varchar(50)
);
select * from course;

create table employee(
id int primary key,
name varchar(50),
manager_id int
);
select * from employee;

insert into student values(101,"Adam"),(102, "saloni"),(103,"ayushi");
insert into course values(102,"English"),(105,"Maths"),(103,"Science"),(107,"Computer Science");
insert into employee values(101,"Adam",103),(102,"saloni",104),(103,"ayushi",null),(104,"donald",103);

/*..........................................INNER JOIN..............................................*/
/*...........................Inner join return records that have matching in both tables.................................*/

select * from student as s inner join course as c on s.student_id=c.student_id;


/*...........................................LEFT JOIN...............................................*/
/*........   Left join are used to return all rows from left table and matched row from right table..........................*/

select * from student as s left join course as c on s.student_id=c.student_id;


/*.............................................RIGHT JOIN.............................................*/
/*..........Right join are used to return all rows from right table and matched row from left table........................*/

select * from student as s right join course as c on s.student_id=c.student_id;


/*..............................................FULL JOIN................................................*/
/*....       Full join are used to return all rows when there is a match in either left or right table.
 .....       basically mysql doesn't support full join but we can indirectly perform full join using UNION*/

select * from student as s left join course as c on s.student_id=c.student_id
union
select * from student as s right join course as c on s.student_id=c.student_id;


/*.............................................LEFT EXCLUSIVE JOIN.........................................*/
/*.......   Left exclusive join are used to return rows from left table only i.e. those data are return who doesn't overlap*/

select * from student as s left join course as c on s.student_id=c.student_id where c.student_id is null;


/*.............................................RIGHT EXCLUSIVE JOIN..........................................*/
/*......    Right exclusive join are used to return rows from right table only i.e. those data are return who doesn't overlap*/

select * from student as s right join course as c on s.student_id=c.student_id where s.student_id is null;


/*...............................................FULL EXCLUSIVE JOIN..........................................*/
/*......    Full exclusive join are used to return rows from both right and left table i.e. who doesn't overlap*/

select * from student as s left join course as c on s.student_id=c.student_id where c.student_id is null
union
select * from student as s right join course as c on s.student_id=c.student_id where s.student_id is null;


/*...............................................SELF JOIN.................................................*/
/*.....  Self join are regular join but the table is joined itself............................*/
/* for ex:- In employee table we have given id,name, manager_id, Now we have to found "manager name" in employee table, so we use self join */

select * from employee as a join employee as b on a.id=b.manager_id;
select a.name, b.name from employee as a join employee as b on a.id=b.manager_id;
select a.name as manager_name, b.name from employee as a join employee as b on a.id=b.manager_id;

