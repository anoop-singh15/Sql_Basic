show databases;

use sql_intro;

show tables; 

create table employees(Emp_Id int primary key,Emp_name varchar(25),Age int ,
Gender	char(1),Doj date,Dept varchar(20),City varchar(25),salary float);

# To show blueprint of table
describe employees;

insert into employees
values(1,"abc1",24,"M","2002-02-09","Development","New york",80000),
(2,"abc2",28,"M","2004-02-19","tech","Seattle",100000),
(3,"abc3",34,"F","2006-12-09","IT","Miami",70000),
(4,"abc4",54,"M","2000-02-01","Marketing","Houston",850000),
(5,"abc5",55,"F","2002-03-09","Sales","Detroit",874400),
(6,"abc6",60,"M","1997-04-27","Product","Austin",89000),
(7,"abc7",25,"F","2002-11-21","Support","Chicago",80000),
(8,"abc8",28,"M","2010-02-06","Finance","Miami",80000),
(9,"abc9",29,"F","2008-02-09","Development","New york",110000),
(10,"abc10",30,"F","1992-10-15","Marketing","Seattle",880000),
(11,"abc11",31,"M","2002-07-13","Product","New york",3000000),
(12,"abc12",32,"M","2002-02-09","HR","Detroit",1000000);

show tables;

# To see all inserted values 
select * from employees;

#To see distinct City from employees
select distinct City from employees;

#To see distinct department from employees
select distinct Dept from employees;

# Aggregate function av
select avg(Age) from employees;

# group by
# round function takes 2 parameter variable or column and value after point
select dept,round(avg(Age),1) as average_Age from employees
 group by Dept;

# sum of salary 
select Dept,sum(salary) as Total_salary from employees
 group by Dept;
 
 # group by and order by important basic
 select count(emp_id),City from employees
 group by City
 order by count(Emp_ID) desc;

#
use sql_intro;
select year(doj) as year ,count(emp_id)
from employees 
group by year(doj);

# group by to join 2 tables
create table sales(Product_Id int ,sell_price float,quantity int,state varchar(20));

insert into sales
values(121,320.0,3,'California'),
(122,320.0,3,'Ohio'),
(123,420.0,4,'Alaska'),
(124,290.0,7,'Texas'),
(125,320.0,8,'California');

select * from sales;

# Extra Deletion command
delete from sales
where product_Id>120;
drop table sales;
show tables;

# revenue sell_price * quantity
select product_id,sum(sell_price * quantity) 
from sales
group by product_id;

#
create table c_product(product_id int ,cost_price float);

insert into c_product
values(121,270.7),
(123,250.0);

# profit generated  using two tables ##### inner join###
# c. or s. are alias
select c.product_id,sum((s.sell_price - c.cost_price) * quantity) as profit
from sales as s inner join c_product as c
where s.product_id=c.product_id
group by c.product_id;

#### HAVING####
# SYNTAX
# select column_name
# from table_name
# where condition
# group by column_name
# having condtion
# order by column_name

select * from employees;

# Question Find citites where  there are more than 2 employees
select dept,avg(salary)as avg_salary
from employees
group by dept
having avg(salary)>95000;

# Question find citites where total salary >200000
select city,sum(salary) as total_salary
from employees
group by city
having total_salary>200000;

# finding citites more than 2 employees 

select dept,count(*) as emp_count
from employees
group by dept
having count(*)>1;

# cities having more than 2or1 employees
select city,count(*) as emp_count
from employees
where city!="Houston"
group by city
having count(*)>1;

#Imprtant 
select dept,count(*) as emp_count
from employees
group by dept
having avg(salary)>95000;







 



