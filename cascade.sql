use mahesh

create table employee(
id int,
name varchar(20),
city varchar(30),
primary key(id))

insert into employee values (1,'mahesh','nanded'),(2,'sushant','pune'),(3,'datta','biloli'),(4,'akash','yawatmal')

create table payment(
pid int,
id int,
amount int,
payment_date date,
FOREIGN KEY(id) REFERENCES Employee (id)
ON UPDATE CASCADE
ON delete CASCADE)


insert into payment values (10,1,2000,'2016-08-19'),(20,2,3000,'2012-02-11'),(30,3,4000,'2015-09-10'),(40,4,5000,'2020-01-11')

select * from employee
select * from payment

delete from employee where id=30

update employee set id=30 where name='akash'


constraint fk_person FOREIGN KEY(id) REFERENCES Employee (id) ON UPDATE CASCADE);  
ALTER TABLE payment DROP FOREIGN KEY fk_person  

ALTER TABLE Payment ADD CONSTRAINT `payment_fk`  
FOREIGN KEY(id) REFERENCES Employee (id) ON UPDATE CASCADE;  



select * from employee left  join payment on employee.id=payment.id union
select * from employee right join payment on employee.id=payment.id


select employee.city,payment.amount from employee,payment where employee.id in(select id from payment)

select employee.city,payment.amount from employee,payment where employee.id in(select city from payment)

select * from employee join payment on employee.id=payment.id where payment.amount = 

select concat  (id,'-',amount) as employeepayment from payment


