use tbw

create table data15(
id int not null,
name varchar (20) not null,
age int check(age>=18),
address varchar (30) default 'pune')


insert into data15 (name,age,address) values ('sush',18,'nan')

select * from data15

alter table data15 add column mobile varchar(20)

update data15 set mobile=98765432 where name='mahesh'

update data15 set name='sushant' where id=1

update data15 set name='datta' where address='pune'


alter table data15 rename column address to city


alter table data15 rename to mahesh1

alter database tbw rename to teambrainworks


mysqldump -u  -p[Password] -R [DB_Name] > [DB_Name].sql

