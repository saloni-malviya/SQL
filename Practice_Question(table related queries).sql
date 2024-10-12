/* In the student table
a. change the name of column "name" to "full_name"
b. delete all the students who scored marks less than 80
c. delete the column of age
*/

use clg;
alter table student
change name full_name varchar(50);
select * from student;

delete from student where marks<80;
select * from student;

alter table student
drop column age;
select * from student;