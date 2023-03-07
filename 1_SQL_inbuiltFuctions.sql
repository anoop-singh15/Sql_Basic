#STARTING COMMAND
show databases;

# CREATE DATABASE COMMAND
create database sql_intro;

# Selecting Database Before Using
use sql_intro;

# Command To See Names Of All Table Present in Database
show tables;

# Creating a Database
create table emp_details(Name varchar(25),Age int,sex char(1),
doj date,city varchar(25),salary float);
show tables;

# To See Blueprint Of Database
describe emp_details;

# Insert Value In Database
insert into emp_details
values("Abc1",35,"M","2003-04-12","NY",79999),
("Abc2",45,"M","2003-04-12","NY",69999),
("Abc3",55,"F","2003-04-12","Argentina",79999),
("Abc4",47,"M","2003-04-12","Russia",89999),
("Abc5",38,"F","2003-04-12","China",99999);

# INBUILT FUNCTIONS
# '*' = Used to select all FIELDS
select * from emp_details;

# Distinct Function
select distinct city from emp_details;

# Count function
select count(name) as count_Name from emp_details;

use sql_intro;
show tables;

select avg(salary) from emp_details;

select name,age from emp_details;

# WHERE CLAUSE --- FILTER CLOUMNS ACCORDING TO PARTICULAR CONDITION

select * from emp_details where age>30;

# Command to print all colums with even age
select * from emp_details where age%2=0;
# Odd age can be printed by changing age%2=1;

# selecting particular fields with where clause and "or" operator
select name ,age,city from emp_details 
where city ="China" or city= "NY";

# "in" operator
select name ,age,city from emp_details 
where city in ("China" , "NY");

# "between" operator
select * from emp_details where
doj between  "2002-04-12" and "2004-05-1";

# "and" operator if all condition seperated by and are true
select * from emp_details 
where age>40 and sex="M";

# Group by clause
select sex ,sum(salary) as total_salary from emp_details
group by sex;

# order by keyword for sorting in ascending and descending order
# ascending is default
select * from emp_details order by salary ;
# for descending 
select * from emp_details order by salary desc;

# BASIC OPERATION 
select (100+20) as addition;

# as is used for alias
select (100-20) as subtraction;

# length of an string
select length("India") as total_len;

# REPEAT
select repeat ("#%@",10);

# upper case
select upper("xyzabc") as captial;

# lower case
select lower("XYZABC") as small_letters;

# current date
select curdate();

# day from current date
select day(curdate());

# command to return current date and time 
select now();

# STRINGS FUNCTION

# uppercase
select upper("india") as upper_case;

# lowercase
select lcase("INDIA") as lower_case;

# length of string
select character_length("india") as total_len;

select name,character_length(name) as total_len 
from emp_details;

# character_length =char_length
select name,char_length(name) as total_len 
from emp_details;

# concatenation
select concat("Tower"," Of"," God") as string;

# use of conacat
select name,age,concat(name,"  ",sex) as name_sex
from emp_details;

# Reverse function - reverses string
select reverse("Tower of God") as rev_str;

# use of reverse
select reverse(name) from emp_details;

# replace function
select replace("Orange is a vegetable","vegetable","fruit") as repl;

# ltrim functions
select length("       _ XYZ_         ");
select length(ltrim("               _ XYZ_          "));

# Rtrim function
select length(rtrim("         _ XYZ_      "));

#trim function
select length(trim("      XYZ      "));

# position function
select position("fruit" in "Orange is a fruit") as pos_fruit;

# ascii value
select ascii('0');




