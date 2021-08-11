create database student;

use student;

create table personal(
id int not null unique,
name varchar (50) not null,
age int not null check (age>=18),
gender varchar (1) not null,
city varchar (50) not null default 'pune',
phone varchar (12) unique)


alter table personal add fees varchar(20) null;

insert into personal (id,name,age,gender,city,phone) values (8,'pandebrothers',30,'m','varanasi','09876')

select name,phone from personal;

use student;

update personal set gender='f' where id=5;






