/*create databse*/
create database clg;

/*use database*/
use clg;

/*create table in database*/
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

/*insert data in student table;*/
insert into student values(101, "Saloni Malviya", 90, "A", "Manawar");
insert into student values(102, "Vanshika Verma", 80, "B", "Kukshi");
insert into student values(103, "Meet Malviya", 88, "B", "Indore");
insert into student values(104, "Nikita Malviya", 78, "C", "Dewas");
insert into student values(105, "Ayushi Rathod", 79, "C", "Pune");
insert into student values(106, "Anika Sonsale", 12, "F", "Mumbai");
insert into student values(107, "Radhika Goswami", 45, "D", "Pune");
update student set marks=91 where rollno=101;

/*fetch and view data*/
select * from student;
select city from student;
select name, marks from student;
select name, city from student;


/*practice question -3*/
/* write a query to find average marks in each city in ascending order */
select city, avg(marks) from student group by city order by avg(marks) desc;
select city, avg(marks) from student group by city order by city asc;

/* practice question*/
/* create table in dataabse*/
use clg;
create table payment(
customer_id int primary key,
customer_name varchar(50),
payment_mode varchar(50),
city varchar(50)
);

/*insert data in table*/
insert into payment values(101,"Saloni","Netbanking","Kukshi"),
(102,"Vanshika","credit card","Mnawar"),
(103,"Sakshi","credit card","Barvani"),
(104, "Vaishnavi","Netbanking","Indore"),
(105,"Nikita", "credit card", "Kukshi"),
(106,"Rashi","Debit card", "Mnavar"),
(107,"Himani","Netbanking","Indore");

/* fetch data */
select * from payment;

/* find the total payment according to each payment mode*/
select payment_mode, count(customer_name) from payment group by payment_mode;

/* count of students in each grade in ascending order */
select grade, count(rollno) from student group by grade order by grade;


