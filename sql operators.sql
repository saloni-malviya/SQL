use clg;
/*.................................................  SQL OPERATORS  .................................................................*/

/* if we want to info of those studnets whose marks will be greater than 100 if we do +10 in marks, so we write */
select * from student where marks+10 >100; 

/*.................................   1. AND OPERATOR  ...............................................................*/

select * from student where grade="B" and city="Indore";


/*.................................   2. OR OPERATOR  .................................................................*/

select * from student where grade="B" or city="Mumbai";


/*.................................   3. BETWEEN OPERATOR  .............................................................*/
/* if we want to data of those students whose marks between 80 to 90*/

select * from student where marks between 80 and 90;


/*..................................  4. IN OPERATOR  ...................................................................*/

select * from student where city in ("Kukshi","Mumbai");


/*..................................  5. NOT OPERATOR  .....................................................................*/

select*from student where city not in("Kukshi","Mumbai");