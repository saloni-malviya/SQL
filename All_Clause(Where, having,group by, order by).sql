/*We will use where clause, "Where clause is used to define some conditions" */
/* for ex: if we want to marks of those students, whose marks in greater than 80. so we used where clause */
select * from student where marks>80;
select name, marks from student where marks>80;

/* if we want to information of those students, whose city is mumbai. */
select * from student where city="Mumbai";

/* we can also write multiple conditions in where clause*/
select * from student where marks>80 and city="Mumbai";


                               /*Limit clause */
/* Limit clause set the upper limit on number of rows to be returned */
/* for ex: if we need data of only 3 students, so we use limit clause, it return only 3 rows  */
select * from student limit 3;

select name, city from student limit 4;

select * from student where marks>75 limit 3;


                              /*order by clause*/
/* it is used to sort data in ascending and descending order */
/* display the student data in ascending order of city */
select * from student order by city asc;

/*display data of only 3 students in descending order of marks */ 
select * from student order by marks desc limit 3;



                                 /*Group By clause*/
/* it is used to group the rows that have the same values in summary rows, it collect data from multiple records and group the result by one or more column */
/* count number of students in each city*/
select city, count(name) from student group by city;

/* count marks of each student in each city*/
select city, name, count(marks) from student group by city,name;

/* find average marks of students in each city */
select city, avg(marks) from student group by city;


                                   /* Having Clause */
/* it is similar to where clause that means it is used to apply some conditions on rows, it is used when we want to apply any condition after grouping*/                                   
/* count number of student in each city where maximum marks cross 90 */
select count(name), city from student group by city having max(marks)>90;

/* select each city where grade is equal to A */
select city from student where grade = "A" group by city;

/* select each city where grade is equal A and maximum marks cross 90 */
select city from student where grade = "A" group by city having max(marks)>90;
select city from student where grade = "A" group by city having max(marks)>90 order by city asc;