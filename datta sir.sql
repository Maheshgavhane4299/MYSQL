create database python 
use python 
create table salespeople(
Snum int,
Sname varchar (20),
City varchar(30),
Comm float(20),
primary key (Snum))


insert into Salespeople values (1001,'Peel','London',.12),(1002,'Serres','San jose',.13),(1004,'Monika','London',.11),(1007,'Rifkin','Barcelona',.15),(1003,'Axelrod','New york',.10),(1005,'Franc','London',.26)


select * from Salespeople

create table Customer(
Cnum int,
Cname varchar (20),
City varchar(30),
Rating varchar(20),
Snum int,
primary key (Cnum),
FOREIGN KEY (Snum) REFERENCES Salespeople(Snum))

select * from Salespeople
desc customer


insert into Customer values (2001,'Hoffman','London','100',1001),
(2002,'Giovanni','Rome','200',1003),
(2003,'Liu','San Jose','200',1002),
(2004,'Grass','Berlin','300',1002),
(2006,'Clemens','London','100',1001),
(2008,'Cisneros','Sane Jose','300',1007),
(2007,'Pereira','Rome','100',1004)

select * from Customer

create table ORDERS(
Onum int,
Amt float,
Odate datetime,
Cnum int,
Snum int,
primary key (Onum),
FOREIGN KEY (Cnum) REFERENCES Customer(Cnum),
FOREIGN KEY (Snum) REFERENCES Salespeople(Snum))


insert into ORDERS values (3001,18.69,"1996-10-03 12:30",2008,1007),
(3003,767.19,"1996-10-03 13:45",2001,1001),
(3002,1900.10,"1996-10-03 12:05",2007,1004),
(3005,5160.45,"1996-10-03 14:00",2003,1002),
(3006,1098.16,"1996-10-03 13:37",2008,1007),
(3009,1713.23,"1996-10-04 15:21",2002,1003),
(3007,75.75,"1996-10-04 16:02",2002,1003),
(3008,4723.00,"1996-10-05 12:07",2006,1001),
(3010,1309.95,"1996-10-06 13:12",2004,1002),
(3011,9891.88,"1996-10-06 13:09",2006,1001),
(3012,3455.78,"1996-10-04 15:21",2002,1003),
(3013,1245.98,"1996-10-04 16:32",2002,1003),
(3014,3721.53,"1996-10-05 12:45",2006,1001),
(3015,734.50,"1996-10-06  13:16",2004,1002),
(3016,1729.67,"1996-10-06 13:07",2006,1001)


select * from ORDERS
select * from salespeople join Customer on  salespeople.snum=Customer.snum
join ORDERS on salespeople.snum=ORDERS.snum


