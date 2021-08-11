select user,host from mysql.user

create user "mahesh" @"local host"

GRANT select ,insert,update,delete on *.* to "mahesh" @"local host"

create database python2021

show databases 

GRANT All privileges on python2021.* to "mahesh" @"local host"

use  python2021

show tables

select * from studentinfo

insert into studentinfo (id,name,age,city) values(20,'sushant','25','nanded')

desc studentinfo 

update studentinfo set name='datta' where id=20;

