create database garage
use garage

create table customer(
CID int,
CNAME varchar (30),
CADD varchar (30),
C_CONTACT varchar(20),
C_CREDITDAYS int not null,
CJ_date date,
SEX varchar (10))

insert into customer values (1001,'Cyona blake','NEW YORK','1235684',20,'2011-01-20','FEMALE'),
(1002,'JOHN SMITH','NEW JERSY','1341684',20,'2011-02-21','MALE'),
(1003,'JORDAN WOOD','PRAG','1805184',20,'2011-03-22','MALE'),
(1004,'CHRISTNA','MANHATTON','1125684',31,'2013-04-23','FEMALE'),
(1005,'TOM HILL','LONDON','1239284',10,'2015-06-25','MALE'),
(1006,'KAMILA JOSEF','PARISE','124568',09,'2011-07-28','FEMALE'),
(1007,'ANDRU SYMON','TAXES','125654',15,'2016-04-01','MALE'),
(1008,'SANJU SAMSUNG','NEW YORK','12346341',4,'2016-01-20','MALE')

alter table customer add primary key(CID)

select * from customer

create table vendors(
VID int,
VNAME varchar (30),
VADD varchar (30),
VCONTACT varchar(20),
VCREDITDAYS int,
VJ_date date)

insert into vendors values (2001,'KIRAN PATIL','PUNE','20535535',20,'2010-01-10'),
(2002,'PRAKASH JAIN','MUMBAI','2063564',10,'2011-11-05'),
(2003,'SWAPNIL THETE','NASHIK','253555352',15,'2010-03-18'),
(2004,'AMOL SHENDE','SATARA','23674776',18,'2015-04-07'),
(2005,'KARAN SINTRE','BULDHANA','256756',30,'2009-04-22'),
(2006,'RAM KULKARNI','OSMANABAD','20367454',21,'2010-07-10')

alter table VENDORS add primary key(VID)

select * from vendors


create table Employee(
EID int,
ENAME varchar (30),
EJOB varchar(40),
EADD varchar (30),
ECONTACT varchar(20),
ESAL INT,
EDOJ DATE,
EDOL DATE)


insert into Employee (EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ) values (3001,'STEVEN KING','PAINTER','NEW YORK','10367454',1200,'2010-06-09'),
(3002,'DAVID AUSTIN','FITTER','MANHATTON','10367434',1100,'2010-08-19'),
(3003,'BRUCE ERNST','MECHANIC','NEW JERCY','10367264',2200,'2010-09-08')
insert into Employee (EID,ENAME,EJOB,EADD,ECONTACT,ESAL,EDOJ,EDOL) values (3004,'LUIS POPP','MECHANIC','NEW JERCY','10367264',1700,'2009-10-19','2010-09-06'),
(3005,'SHERI GOMES','FITTER','PARIS','10327264',1000,'2009-10-19','2010-08-01')
insert into Employee (EID,ENAME,EJOB,EADD,ECONTACT,EDOJ) values (3000,'JAMES PHILLIP','FITTER','PARIS','10322264','2018-01-08')

alter table Employee add primary key(EID)

select * from Employee


create table Sparepart(
SPID int,
SPNAME varchar(30),
SPRATE int,
SPUNIT varchar(20))


insert into Sparepart values (4001,'TWO WHEELER TUBE',250,'NOS'),
(4002,'TWO WHEELER ENGINE OIL',400,'LTRS'),
(4003,'TWO WHEELER ENGINE OIL',5000,'LTRS'),
(4004,'TWO WHEELER CARBORATOR',680,'NOS'),
(4005,'TWO WHEELER CLUTCH WIRE',129,'MTRS'),
(4006,'TWO WHEELER TAIL LIGHT',100,'NOS'),
(4007,'TWO WHEELER INDICATORS',150,'NOS'),
(4008,'TWO WHEELER GASKIT',1340,'NOS'),
(4009,'WHITE COLOUR',340,'LTRS'),
(4010,'BLACK COLOUR',240,'LTRS'),
(4011,'TWO WHEELER SIDE MIRROR',250,'NOS'),
(4012,'FOUR WHEELER SIDE MIRROR',450,'NOS'),
(4013,'TWO WHEELER SHOCKUP',1320,'PAIR'),
(4014,'FOUR WHEELER BUMPER',6000,'NOS'),
(4015,'FOUR WHEELER FRONT GLASS',7000,'PCS')

alter table Sparepart add primary key(SPID)

select * from Sparepart


CREATE TABLE PURCHASE
(
PID INT PRIMARY KEY,
VID INT,
SPID INT,
PQTY INT,
SPRATE INT,
SPGST FLOAT,
PDATE DATE,
TRANCOST INT,
TOTAL FLOAT,
RCV_EID INT,
FOREIGN KEY(VID) REFERENCES Vendors(VID),
FOREIGN KEY(SPID) REFERENCES SPAREPART(SPID),
FOREIGN KEY(RCV_EID) REFERENCES Employee(EID)
)

INSERT INTO PURCHASE
VALUES
(5001,2001,4001,10,250,350,"2011/01/01",1300,4150,3001),
(5002,2002,4002,4,400,288,"2011/01/01",100,1988,3001),
(5003,2003,4004,8,680,761.6,"2011/01/01",50,6251.6,3003),
(5004,2004,4005,10,129,154.8,"2011/01/01",125,1569.8,3004),
(5005,2005,4006,20,100,300,"2011/01/01",20,2320,3003),
(5006,2006,4007,30,150,630,"2011/01/01",60,5190,3000),
(5007,2001,4003,20,5000,14000,"2011/01/01",115000,4150,3000),
(5008,2006,4005,1,129,15.48,"2011/01/01",50,194.48,3005),
(5009,2006,4005,1,129,15.48,"2011/01/01",50,194.48,3005),
(5010,2006,4009,5,340,238,"2011/01/01",0,2938,3005)

select * from PURCHASE


create table SER_DET(
SID int,
CID int,
EID int,
SPID int,
TYP_VEH varchar(30),
VEH_NO varchar(20),
TYP_SER varchar(30),
SER_DATE date,
QTY float,
SP_RATE int,
SP_AMT int,
SP_G int,
SER_AMT int,
COMM int,
TOTAL float,
primary key(SID),
foreign key (CID) references customer(CID),
foreign key (EID) references Employee(EID),
foreign key (SPID) references Purchase(SPID)
)

insert into SER_DET values (6001,1001,3001,4001,'TWO WHEELER','MH15CA3228','TUBE DAMAGED','2011-01-02',1,250,250,35,50,0,335),
(6002,1002,3002,4002,'TWO WHEELER','MH-16U5713','FULL SERVICING','2011-03-04',1,400,400,52,300,50,752),
(6003,1003,3004,4005,'TWO WHEELER','MH12PQ1313','CLUTCH WIRE','2011-08-22',1,129,129,0,10,0,139),
(6004,1002,3002,4002,'TWO WHEELER','MH-16U5713','FULL SERVICING','2011-05-05',1,400,400,52,300,50,752),
(6005,1004,3001,4009,'TWO WHEELER','MH-14PA335','COLOR','2011-10-21',2.5,340,850,119,500,150,1469),
(6006,1006,3001,4009,'TWO WHEELER','MH-12WE334','COLOR','2011-12-01',2.5,340,850,119,500,150,1469),
(6007,1007,3001,4001,'TWO WHEELER','MH17BB1345','TUBE DAMAGED','2012-01-01',1,250,250,35,150,0,435)

Select * from SER_DET











