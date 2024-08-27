/*..................................................ALTER COMMAND......................................................*/
/*......... ALTER are used to change the column or schema in existing table */


/*......................................  1.  ADD COLUMN  ................................................................      */
/* if we want to add new column in existing table, so we use add */

use clg;
alter table student add column age int not null;
select * from student;

/*......................................  2.  DROP COLUMN  ...................................................................    */
/* if we want to delete the column in existing table, so we use drop */

alter table student
drop column age;
select * from student;

/*.......................................  3.  RENAME TABLE  .....................................................................  */
/*if we want to give new name of the previous table, we use rename */

alter table student
rename to stu;
select * from stu;
alter table stu rename to student;

/*.......................................   4.  CHANGE(RENAME) COLUMN NAME  .......................................................               */
/* if we want to give new name of previous column , we use change */

alter table student 
change column rollno Roll_No int;
select * from student;

/*.......................................  5. MODIFY COLUMN(MODIFY DATATYPE/CONSTRAINT)  .............................................. */

alter table student add column age int not null default 19;
select * from student ;
alter table student modify age varchar(2); 