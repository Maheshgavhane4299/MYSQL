create database mahesh

use mahesh

create table student(
id int,
name varchar(20),
address varchar(30),
contact varchar(12))

insert into student values (1,'mahesh','nanded','1234567'),(2,'sushant','pune','7654321'),(3,'datta','biloli','987654'),(4,'akash','yawatmal','5678965')

alter table student add primary key (id)

alter table student add column paddress varchar(30)

update student set id=10 where name='sushant'

DELETE FROM student WHERE id=3

select * from student

create table laptop(
lid int,
lmodel varchar (20),
lcompany varchar(30))


insert into laptop values (3,'macbook','apple'),(4,'inspirion','dell')


alter table laptop add foreign key(lid) references student(id) on update cascade

alter table laptop add foreign key(lid) references student(id) on delete cascade

DELETE FROM laptop WHERE lid=3

select * from laptop


CREATE TABLE Employee (  
  emp_id int(10) NOT NULL,  
  name varchar(40),  
  birthdate date,  
  gender varchar(10),  
  hire_date date,  
  PRIMARY KEY (emp_id)  
); 
select * from Employee


INSERT INTO Employee (emp_id, name, birthdate, gender, hire_date) VALUES  
(101, 'Bryan', '1988-08-12', 'M', '2015-08-26'),  
(102, 'Joseph', '1978-05-12', 'M', '2014-10-21'),  
(103, 'Mike', '1984-10-13', 'M', '2017-10-28'),  
(104, 'Daren', '1979-04-11', 'M', '2006-11-01'),  
(105, 'Marie', '1990-02-11', 'F', '2018-10-12');  

CREATE TABLE Payment (  
  payment_id int PRIMARY KEY NOT NULL,  
  emp_id int,  
  amount float,  
  payment_date date,  
  FOREIGN KEY (emp_id) REFERENCES Employee (emp_id) ON DELETE CASCADE  
);  

INSERT INTO Payment (payment_id, emp_id, amount, payment_date) VALUES   
(301, 101, 1200, '2015-09-15'),  
(302, 101, 1200, '2015-09-30'),  
(303, 101, 1500, '2015-10-15'),  
(304, 101, 1500, '2015-10-30'),  
(305, 102, 1800, '2015-09-15'),  
(306, 102, 1800, '2015-09-30'); 


DELETE FROM Employee WHERE emp_id = 102; 


select * from Payment


create table sushant(
id int,
name varchar (20),
age int)

insert into sushant values (4,'sushant',26)

alter table sushant add primary key (id)

select * from sushant

update sushant set id=10 where age=25

delete from sushant where age=25 

create table company1(
cid int,
cname varchar (25),
salary float)


insert into company1 values (1,'bajaj',20000),(2,'hcl',50000),(3,'tcs',40000)

select * from company1

alter ta
alter table company1 add primary key (cname)
alter table company drop primary key
alter table company1 add foreign key (cid) references sushant(id) on update cascade
alter table company1 add foreign key (cid) references sushant(id) on delete cascade

insert into company 





CREATE TABLE Employee (  
  emp_id int(10) NOT NULL,  
  name varchar(40),  
  birthdate date,  
  gender varchar(10),  
  hire_date date,  
  PRIMARY KEY (emp_id)  
); 
select * from Employee


INSERT INTO Employee (emp_id, name, birthdate, gender, hire_date) VALUES  
(101, 'Bryan', '1988-08-12', 'M', '2015-08-26'),  
(102, 'Joseph', '1978-05-12', 'M', '2014-10-21'),  
(103, 'Mike', '1984-10-13', 'M', '2017-10-28'),  
(104, 'Daren', '1979-04-11', 'M', '2006-11-01'),  
(105, 'Marie', '1990-02-11', 'F', '2018-10-12');  

CREATE TABLE Payment (  
  payment_id int PRIMARY KEY NOT NULL,  
  emp_id int,  
  amount float,  
  payment_date date,  
  FOREIGN KEY (emp_id) REFERENCES Employee (emp_id) ON DELETE CASCADE  
);  
ALTER TABLE Payment ADD CONSTRAINT `payment_fk`   
FOREIGN KEY(emp_id) REFERENCES Employee (emp_id) ON UPDATE CASCADE;  


INSERT INTO Payment (payment_id, emp_id, amount, payment_date) VALUES   
(301, 101, 1200, '2015-09-15'),  
(302, 101, 1200, '2015-09-30'),  
(303, 101, 1500, '2015-10-15'),  
(304, 101, 1500, '2015-10-30'),  
(305, 102, 1800, '2015-09-15'),  
(306, 102, 1800, '2015-09-30'); 


DELETE FROM Employee WHERE emp_id = 102; 

UPDATE Employee SET emp_id = 103 WHERE emp_id = 102; 


select * from Payment















