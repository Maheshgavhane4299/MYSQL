use student

create table data(
id int,
name varchar (30) not null,
age int check (age>=18),
address varchar(10),
primary key(id)
)

insert into data (id,name,age,address) values (5,'pooja',26,'pune'),(6,'komal',25,'pune'),(7,'akash',27,'yawatmal'),(8,'nikita',25,'amraati')


select * from data

alter table data add column  mobile varchar(12)

update data set mobile=0987654321 where id in (5,6,7,8)

select sum(age) from data

select avg(age) from data

select count(age) from data

select min(id) from data

select  name from data where id=(select min(id) from data)


select * from data where name like 's%'

select * from data where name like '%o__'

select * from data where name like '%s%'

select * from data where name like '%a'

select * from data  WHERE address LIKE 'pu%'

use tbw
mysqldump -u mahesh -p-R tbw > tbw.sql

alter database tbw modify name=tbw2


use tbw

create table student2(
id int,
name varchar(20),
age int,
city varchar(25),
designation varchar(20),
mobile varchar(12))

insert into student2 (id,name,age,city,designation,mobile) values(1,'mahesh',26,'nanded','engineer','8999146214'),(2,'sushant',26,'pune','programmer','1234567'),(3,'datta',26,'biloli','developer','987654')

select * from student2

create table Salespeople (
Snum int,
Sname varchar (20),
City varchar(30),
Comm double(20),
primary key (Snum))


insert into Salespeople values (1001,'Peel','London',.12),










