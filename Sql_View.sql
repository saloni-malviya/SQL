/*........................................MYSQL VIEWS......................................*/
/*  A view is a virtual table based on the result set of an sql statement.   */
select * from student;

create view view1 as select Roll_No, full_name, marks from student;
select * from view1;
select * from view1 where marks>90;
drop view view1;