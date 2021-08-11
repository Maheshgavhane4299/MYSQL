create database TBW

use TBW

create table brainworks(
id int auto_increment ,
name varchar (20),
age int,
address varchar(30),
primary key(id))


insert into brainworks (name,age,address) values ('mahesh',26,'nanded'),('sushant',26,'nanded'),('datta',26,'bilolo'),('danny',28,'mugat')

create table student(
stud_id int,
lmodel varchar (20),
designation varchar(20),
foreign key(stud_id) references brainworks(id))


insert into student (stud_id,lmodel,designation) values (1,'elitebook','engineer'),(2,'thinkpad','programmer'),(3,'dell','developer')


select * from brainworks inner join student on brainworks.id=student.stud_id

select * from brainworks left join student on brainworks.id=student.stud_id

select * from brainworks right join student on brainworks.id=student.stud_id


alter table brainworks add column company varchar(12)

select * from brainworks

update brainworks set mobile_no=(case id when 1 then 8999146214 when 2 then 1234567890 when 3 then 0987654321 when 4 then 5432109876 end) where id in (1,2,3,4)

update brainworks set phone=(case id when 1 then 8999146214 when 2 then 1234567890 when 3 then 0987654321 when 4 then 5432109876 end) where id in (1,2,3,4)




