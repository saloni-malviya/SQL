/*..................................UNION.........................................*/
/*....   Union are used to combine result set of two or more select statement . It return unique records... */
create table A(
id int primary key,
name varchar(50));
insert into A values (1,"saloni"),(2,"ayushi"),(3,"vaishnavi"),(4,"saloni"),(5,"vivek"),(6,"ayushi");
select * from A;

select name from A union select name from A;


/*....................................UNION ALL.....................................*/
/*...  Union All is same as the union but it also return duplicate records.   */

select name from A
union all
select name from A;