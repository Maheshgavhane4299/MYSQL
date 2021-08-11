use student

create table data1(
id int auto_increment,
name varchar(20),
age int,
address varchar(30),
mobile varchar(12),
primary key(id))

insert into data1 (name,age,address,mobile) values ('mahesh',26,'pune','12345678'),('nikita',26,'amravati','123423455678'),('datta',26,'biloli','1234567348'),('akash',28,'yawatmal','12323445678'),('sneha',26,'baramati','12340985678')

create table data3(
lid int,
lmodel varchar(20),
designation varchar(20),
foreign key(lid) references data1(id))


insert into data3(lid,lmodel,designation) values (1,'elitebook','engineer'),(2,'sushant','programmer')



select * from data1 inner join data3 on data1.id=data3.lid
select * from data1 left outer join data3 on data1.id=data3.lid
select * from data1 right join data3 on data1.id=data3.lid
select * from data1,data3 




create table data4(
id int,
name varchar(20),
age int,
address varchar(30),
mobile varchar(12))

alter table data4 add column phone varchar(12)





create sequence s1 start with 1



create table data8(
id int CREATE SEQUENCE id INCREMENT BY 1 START WITH 100)
name varchar(20),
age int,
address varchar(30),
mobile varchar(12),
primary key(id))

insert into data7(id,name,age,address,mobile) values (1,'mahesh',26,'pune','12345678'),('nikita',26,'amravati','123423455678'),('datta',26,'biloli','1234567348'),('akash',28,'yawatmal','12323445678'),('sneha',26,'baramati','12340985678')

ALTER TABLE data7 DROP PRIMARY KEY;


CREATE SEQUENCE id INCREMENT BY 1 START WITH 622;

create table data10 as select * from data1 
create table data11 as select * from data1 where false




