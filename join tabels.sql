create table staff_info(
staff_id int auto_increment,
name varchar(20),
age int,
subject varchar(30),
primary key (staff_id))


insert into staff_info(name,age,subject) values ('sushant',26,'python'),('pooja',26,'oops'),('sneha',26,'html'),('datta',26,'css')

create table laptop(
lid int,
lmodel varchar(20),
lcompany varchar(30),
staff_id int,
PRIMARY KEY (lid),
FOREIGN KEY (staff_id) REFERENCES staff_info(staff_id))

use student


alter table laptop add mobile varchar(12)

insert into laptop(lid,lmodel,lcompany,mobile) values(5,'gaming','dell',9860439),(6,'programming','hp',9860439234),(7,'student','asus',98604354679)

update laptop set mobile=43218888 where lid=4

SELECT staff_info.name,laptop.lcompany, laptop.lmodel
FROM staff_info
INNER JOIN laptop ON staff_info.staff_id=laptop.staff_id;

select l1.* from 
(select l2.*,substr(l2.mobile,length(l2.mobile)-3) d2 from laptop l2 )l2,(select l1.*,substr(l1.mobile,length(l1.mobile)-3) d1 from laptop l1 )l1
where l1.lid=l2.lid and l1.d1=l2.d2

select l1.*,substr(l2.mobile,length(l2.mobile)-4) l2,substr(l1.mobile,length(l1.mobile)-3) l1 from laptop l1,laptop l2
where l1.lid=l2.lid
use student
select * from  laptop l2 where substr(l2.mobile,length(l2.mobile)-3) in(
select substr(l2.mobile,length(l2.mobile)-3) d5 from laptop l2 group by substr(l2.mobile,length(l2.mobile)-3)
having count(*)>1)

truncate table personal

rollback
select* from personal



