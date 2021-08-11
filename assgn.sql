SELECT * FROM python.customer;

use python

select salespeople.sname,salespeople.snum,customer.cnum from salespeople join 


 select a.onum,max(a.amt),a.odate,a.cnum,b.snum from orders a,customer b where a.cnum=b.cnum group by b,snum,a.odate

select count(onum),snum from orders group by snum order by count(onum) desc

select * from customer where (select count(*) from customer where city='san jose')>1


select sname,onum from salespeople join orders on salespeople.snum=orders.snum where sname='monika'


select * from salespeople join orders on salespeople.snum=orders.snum where Odate='1996-10-03'

select onum,amt,date_format(Odate,"%d-%b-%y ") as Odate,cnum,snum from orders where date_format ="03-oct-1996"


select odate,sum(amt) from orders group by odate

select * from orders where amt>(amt(odate='1996-10-06' order by cnum))

select sname,snum,costomer.rating from salespeople where exists(select rating from customer where rating=300)


select sname,salespeople.snum from salespeople join customer on salespeople.snum=customer.snum where rating='300'

desc customer

 select * from customer order by rating
 
  select customer.cnum,customer.cname,salespeople.snum,salespeople.sname from customer,salespeople where customer.snum+1000=customer.cnum
  
  select cnum,cname, from customer where cnum>(select snum from salespeople where sname='serres')
  
   select sname,comm*100 as from salespeople
   
   select salespeople.sname,orders.odate,orders.onum,orders.amt from customer ,salespeople ,orders where customer.snum=salespeople.snum and customer.cnum=orders.cnum and amt>=3000
   
    select a.cname,b.sname,b.comm from customer a,salespeople b where a.snum=b.snum and b.comm>'0.12'
 
 
  select a.sname,b.cname from salespeople a,customer b where a.snum=b.snum limit 4
  
  Select sname, snum from salespeople where snum in ( select snum from customer group by snum having count(snum) > 1 );
  
  
  
  
  
  
  
  
select a.cname,b.onum from customer a, orders b where a.cnum=b.cnum and a.cname='cisneros' order by a.cname


select cname from  customer where cname between  'a'and 'g'


select a.cname,b.cname from customer a,customer b where a.snum=b.snum


select * from orders where amt>(select avg(amt) from orders where odate='1996-04-10')

select cnum,cname,rating from customer where rating in(select max(rating)from customer group by city);


select * from orders where amt>any(select amt from orders where date (odate)='1996-10-06');

SELECT *
FROM Orders
WHERE amt >
   (SELECT amt
	FROM orders
	WHERE  odate='1996/10/06');

select * from orders where amt>any(select amt from orders where odate='1996-10-06');


select * from salespeople where sname='peel' or sname='serres'


select * from customer where rating>(select avg(rating) from customer where city='san jose')

select a.sname,b.sname from salespeople a,salespeople b where a.snum=b.snum



select a.amt,a.cnum,b.rating,b.snum,c.sname,c.comm,a.amt*c.comm from orders a,customer b,salespeople c where a.cnum=b.cnum and b.snum=c.snum and b.rating>100

select * from customer where rating>(select avg(rating) from customer where city='san jose')

select a.sname,b.sname from salespeople a,salespeople b where a.snum=b.snum


 select sname,city from salespeople where city in ('barcelona','london') 


select sname,snum from salespeople where snum in (select snum from customer group by snum having count(snum)=1)


select a.cname,b.cname,c.sname from customer a,customer b,salespeople c where a.snum=b.snum and a.snum=c.snum;

select * from orders where amt>'1000'   

  select orders.onum,customer.cnum from orders,customer where orders.cnum=customer.cnum 



select b.sname,c.odate,c.onum,c.amt from salespeople b,orders c where b.snum=c.snum and c.odate='1996-10-03' order by c.amt desc

select max(amt),snum,odate from orders group by (snum,odate) ,snum having odate='03-oct-96';


select a.sname,max(b.amt) from salespeople a,orders b where a.snum=b.snum and odate like'%1996-10-03%'group by a.sname

select * from orders

 select a.amt,a.cnum,b.rating,b.snum,c.sname,c.comm,a.amt*c.comm from orders a,customer b,salespeople c where a.cnum=b.cnum and b.snum=c.snum and b.rating>100


 select a.amt,a.cnum,b.rating,b.snum,c.sname,c.comm,a.amt*c.comm from orders a,customer b,salespeople c where a.cnum=b.cnum and b.snum=c.snum and b.rating>100


select * from customer where rating>(select avg(rating) from customer where city='san jose')

select salespeople.sname,salespeople.sname from salespeople

select a.snum,b.snum from salespeople a,salespeople b order by b.snum desc;

select s.sname,d.sname from salespeople s,salespeople d order by s.snamesname desc;


select snum,sname from salespeople  where (select count(*)=1  from customer where customer.snum=salespeople.snum);

select sname,snum from salespeople where snum in (select snum from customer group by snum having count(snum)=1)


select a.cname,b.cname,c.sname from customer a,customer b,salespeople c where a.snum=b.snum and a.snum=c.snum


select a.sname,a.snum,b.city from salespeople a left outer join customer b on a.snum=b.snum;


select c.snum,s.snum from salespeople s,customer c where s.city=c.city group by c.snum,s.snum having c.snum!=s.snum

select a.sname,b.rating from salespeople a,customer b where a.snum=b.snum

select * from customer where rating>=200

select * from orders where date(odate)='1996-10-03' or date(odate)='1996-10-04'

select * from orders from odate='1996-03-10'; select * from orders where odate='1996-10-04'

select * from orders where date(odate)= '1996-10-03' or date(odate)='1996-10-04'


select a.cname,b.onum from customer a,orders b where a.cnum=b.cnum
select a.cname,b.onum from customer a,orders b where a.cnum=b.cnum;

select * from customer where rating>(select max(rating) from customer where city='Rome')

select * from customer where (rating<=100 and city='Rome') or rating>100

select * from customer where snum=1001



select sum(orders.amt),salespeople.snum from orders,salespeople where sum(amt)>max(amt) group by salespeople.snum;

select sum(amt),snum from orders, having sum(amt)>max(amt) group by snum;


select odate,sum(amt)as from orders as a group by odate

select * from orders where amt in (0,'null')


Select sum(amt), snum from orders group by snum having sum(amt) >(select max(amt) from orders)

select a.sname,b.cname,b.rating from salespeople a,customer b where a.snum=b.snum and b.rating<200 order by cname


 select sname,comm from salespeople 

select a.sname,sum(a.comm*c.amt) as commision from salespeople a,customer b,orders c where a.snum=b.snum and b.cnum=c.cnum group by a.comm;

select cname,city from customer where rating=(select rating from customer where cnum='2001')

select a.sname,b.cname from salespeople a,customer b where a.snum=b.snum order by a.sname limit 2

select odate,sum(amt) as a from orders group by date(odate)
having a>= (select max(amt)+2000 from orders)

select a.cnum,a.cname,b.snum,b.sname from customer a,salespeople b where b.snum+1001=a.cnum


select count(snum) from salespeople where snum in(
select snum from orders)

Select sum(amt), snum from orders group by snum having sum(amt) >(select max(amt) from orders)


select a.sname,sum(a.comm*c.amt) from salespeople a,orders c
 where a.snum=c.snum group by a.sname;
-- Write a query that produces the names and ratings of all customers of all who have above average orders.

select cname,rating,amt from customer,orders where amt>(select avg(amt) as amt from orders)group by cname


-- Find the sum of all purchases from the Orders table

select sum(amt) from orders

-- Write a select command that produces the order number, amount, and date for all rows in the Order table-- 

select onum,amt,odate from orders

select count(cnum) from customer where rating is not null

select count(cnum) from customer where rating 

select onum,sname,cname from orders,salespeople,customer where salespeople.snum=customer.snum and salespeople.snum=orders.snum

select (a.comm*b.amt),c.city from salespeople a,orders b,customer c 
where a.snum=c.snum and a.snum=b.snum and c.city='London'

select s.sname,city from salespeople s where exists(select * from customer c where c.snum!=s.snum and c.city=s.city)


select snum,sname from salespeople where sname not in(select sname from salespeople where city = any (select city from customer))




select a.sname,a.city,b.cname,b.city from salespeople a,customer b where a.snum=b.snum and a.city!=b.city

-- Write a query that selects all customers serviced by Peel or Motika.-- 
select cname,sname from customer,salespeople where salespeople.snum=customer.snum and sname='peel'or sname='monika' group by cname


select a.sname,b.cname from salespeople a,customer b where a.snum=b.snum and sname in('peel','monika')
select a.sname,b.cname from salespeople a,customer b where a.snum=b.snum and (sname='peel' or sname='monika')


select onum from orders where cnum in(select distinct cnum from customer,salespeople where customer.city not in(select salespeople.city from salespeople));

use python
select distinct snum from orders where cnum in(select cnum from orders group by cnum having count(cnum)>1)

select cname from customer where cname like 'c%'

select city,max(rating) from customer group by customer.city

select a.snum,b.onum from customer a,orders b where (select snum from customer having count(snum>1))


select city as for_the_city,max(rating)as higher_rating_is from customer group by city;
-- Write a query that will produce the Snum values of all salespeople with orders currently in the Orders table without any repeats.

-- Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customers’ names and numbers.

select rating,cname,cnum from customer order by rating desc
-- Find the average commission for salespeople in London.-- 
select avg(comm),city from salespeople where city='london'


-- Find all orders credited to the same salesperson that services Hoffman.

select salespeople.snum,sname,onum from salespeople,orders where salespeople.snum=orders.snum(select cname from customer where cname='hoffman')

select * from orders
join salespeople on salespeople.snum=orders.snum
join customer on customer.snum=orders.snum where cname='hoffman'

select * from orders where snum=(select snum from customer where cname='hoffman')

-- Find all salespeople whose commission is in between 0.10 and 0.12 both inclusive.

select * from salespeople where comm >=0.10 and comm <=0.12
select * from salespeople where comm between 0.10 and 0.12

-- Write a query that will give you the names and cities of all salespeople in London with commission above 0.10

select sname,city,comm from salespeople where city='london' and comm>0.10

SELECT * FROM ORDERS WHERE (AMT < 1000 OR NOT (ODATE = 10/03/1996 AND CNUM > 2003))

select c.cname,min(amt) from customer c,orders o where c.snum=o.snum group by cname

-- Write a query that selects the first customer in alphabetical order whose name begins with ‘G’

select * from customer where cname like 'g%'
-- Write a query that counts the number of different not NULL city values in the Customers table.

select city,count(city) from customer where city is not null group by city


select avg(amt) from orders

SELECT * FROM ORDERS WHERE NOT ((Odate =10/03/1996 OR Snum>1006) AND amt>=1500)


-- Find all customers who are not located in San Jose & whose rating is above 200.

select * from customer where city!='san jose' and rating>'200'

SELECT * FROM orders WHERE NOT ((Odate = 10/03/1996 AND Snum>1002) OR amt>2000)
-- Which salespeople attend to customers not in the city they have been assigned to?

select a.sname,b.cname,a.city,b.city from salespeople a,customer b where a.city!=b.city group by sname
-- Which salespeople get commission greater than 0.11 and serving customers rated less than 250?

select a.sname,a.comm,b.rating from salespeople a,customer b where comm>0.11 and rating<'250' group by sname

-- Which salespeople have been assigned to the same city but get different commission percentages?

select sname,city,(comm*100) from salespeople where (count(city>1))

select sname,comm,city from salespeople 
where city in(select city from salespeople group by city having count(city) > 1)

select * from(select sum(comm*amt*0.01) as amt,sname from salespeople1,orders group by sname order by amt desc)where rownum<2

select sname,comm from salespeople where comm=(select max(comm) from salespeople)

-- Does the customer who has placed the maximum number of orders have the maximum rating?

select a.onum,b.rating from orders a,customer b where a.snum=b.snum 

select cnum,count(onum) from orders having count(onum) in 
(select max(count(onum)) from orders) group by cnum

-- List all customers in descending order of customer rating

select * from customer order by rating desc
-- On which days has Hoffman placed orders?

select onum,odate from orders 
where cnum in(select cnum from customer where cname='Hoffman')

select sname,comm from salespeople
-- Which salespeople have no orders between 10/03/1996 and 10/05/1996?

select a.sname,b.onum,b.odate from salespeople a,orders b where a.snum=b.snum and date(odate) not between'1996-10-03'and'1996-10-05'

select a.sname,b.onum from salespeople a,orders b where a.snum=b.snum group by sname

select a.cname,b.onum from customer a,orders b where a.cnum=b.cnum group by cname

	-- On which date has each salesperson booked an order of maximum value?
 select odate,onum,amt from orders where amt in(select max(amt) from orders group by date(odate));
 
select sname,amt from salespeople,orders where amt=(select sum(amt)from orders)group by sname

select b.snum,c.sname,sum(a.amt) as total from orders a,customer b,salespeople c
where a.cnum=b.cnum and b.snum=c.snum group by b.snum order by total desc limit 1

select b.cname,sum(a.amt) as total from orders a,customer b,salespeople c
where a.cnum=b.cnum and b.snum=c.snum group by b.cnum order by total  limit 1

select sname,rating from salespeople,customer where rating in(select rating from customer group by rating having count(rating) > 1)

select c1.cname,c2.cname,c1.rating from customer c1,customer c2  
where c1.rating=c2.rating and c1.cname!=c2.cname order by c1.rating

-- Find all orders greater than the average for October 4th.

select onum,amt from orders where amt > (select avg(amt) from orders where date(odate)='1996-10-04')

select a.cnum,b.amt from customer a,orders b where amt>(select avg(amt) from orders)

select a.cnum from customer a where rating >(select avg(rating) from customer where cname='san jose')

-- Give names and numbers of all salesperson that have more than one customer.

select sname,snum from salespeople 
where snum in(select snum from customer group by snum having count(snum)>1)

where city in(select city from salespeople group by city having count(city) > 1)

select s.sname,s.snum from salespeople s,customer c where s.city=c.city and s.snum!=c.snum

select cnum,cname from customer where cnum in(select cnum from orders group by cnum having sum(amt)=(select min(sum(amt)) from orders group by cnum))

select a.cnum,b.cname,b.rating,sum(a.amt) as totalspend from orders a,customer b 
where a.cnum=b.cnum group by cnum order by totalspend


select odate,sum(amt) from orders group by date(odate)

select sname,count(sname) from salespeople join orders on salespeople.snum=orders.snum group by orders.snum



select onum,amt from orders  where amt <(select max(amt) from orders 
where amt in(select orders.amt from customer,orders where customer.cnum=orders.cnum and customer.city='San Jose'))    


 select cname,rating,amt from customer,orders where amt<(select avg(amt) as amt from orders)group by cname


use python

select a.sname,b.city,a.city,b.cname from salespeople a,customer b where a.snum!=b.snum and a.city=b.city group by sname


 select b.cname,b.rating from customer b 
 where rating =any(select rating from salespeople,customer where salespeople.snum=customer.snum and sname='serres')

use garage

--  List all the customers serviced.-- 
select a.sname,b.cname,b.rating from salespeople a,customer b where a.snum=b.snum and b.rating<200 order by cname
select s.sname,city from salespeople s where exists(select * from customer c where c.snum!=s.snum and c.city=s.city) 
select snum,sname from salespeople where sname in(select sname from salespeople where city =any(select city from customer))

select cname,sname,c.city,s.city from customer c,salespeople s where c.snum=s.snum and c.city!=s.city;



select snum,odate,max(amt) from orders group by odate,snum
--  Which salesperson(s) should be fired?

select a.sname from salespeople a,customer b,orders c where a.snum!=b.snum and a.snum!=c.snum group by sname


 select o.onum,o.snum,s.sname,s.city,o.odate,o.amt from orders o,salespeople s 
 where o.snum=s.snum and amt in(select max(amt) from orders group by snum);

select sname,cname from salespeople join customer on salespeople.snum=customer.snum
select a.sname from salespeople a,customer b where a.sname not in (select sname from salespeople a,customer b,orders c where a.snum=b.snum and a.snum=c.snum)group by sname


 select snum,sname from salespeople where sname not in(select sname from salespeople where city = any (select city from customer))

select odate ,count(distinct snum) from orders 
group by date(odate)


select a.cnum,b.sname,c.amt from customer a,salespeople b,orders c where a.snum=b.snum and a.cnum=c.cnum and amt<2000 limit 5
select if(count(*)>0, 'Yes' , 'No') from salespeople sp join customer c on c.snum=sp.snum where c.city='Berlin'
select sname from salespeople where snum in (select snum from  customer where city='berlin')

SELECT B.SNUM,COMM*SUM(AMT) AS COMMISION FROM SALESPEOPLE A,ORDERS B 
WHERE A.SNUM=B.SNUM GROUP BY B.SNUM ORDER BY COMMISION DESC

-- FOR rownumber creating
select *from  (SELECT *,   
    ROW_NUMBER() OVER(ORDER BY SPID) AS rownum  
FROM Sparepart) s where rownum >=(SELECT COUNT(1)%2==0 FROM sparepart) 


















