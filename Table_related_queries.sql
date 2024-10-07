/*.................................................... TABLE RELATED QUERIES ............................................................. */


/*..............................................  1. UPDATE QUERY  ................................................................ */

use clg;

SET SQL_SAFE_UPDATES=0;
update student set grade = "O" where grade = "A";
select * from student;

update student set marks = 86 where rollno = 105;
update student set grade = "A" where marks between 80 and 90;
update student set marks=marks-2;
update student set marks =90 where rollno='12';
update student set marks =91 where rollno='13';


/*..............................................  2. Delete query  .........................................................*/
/* if we want to delete an existing rows we used delete query and delete is DML command */
/* if we want to delete data of those students whose marks is less than 33*/

use clg;
delete from student where marks<33;


/*................................................  3. Truncate  .............................................................*/
/* if we want to delete all rows from the table , we used truncate and truncate is DDL command */

create table stu(
id int primary key,
name varchar(50)
);
insert into stu values(1, "Aman"), (2,"shraddha");
select * from stu;
truncate table stu;
select * from stu;
