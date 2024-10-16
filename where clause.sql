use clg;
/*We will use where clause, "Where clause is used to define some conditions" */
/* for ex: if we want to marks of those students, whose marks in greater than 80. so we used where clause */
select * from student where marks>80;
select name, marks from student where marks>80;

/* if we want to information of those students, whose city is mumbai. */
select * from student where city="Mumbai";

/* we can also write multiple conditions in where clause*/
select * from student where marks>80 and city="Mumbai";
