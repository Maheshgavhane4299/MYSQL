use garage
-- Q-1
select a.cname,b.veh_no from customer a,ser_det b where a.CID=b.CID
select a.cname,b.veh_no from customer a join ser_det b on a.CID=b.CID
 SELECT CNAME,CADD FROM CUSTOMER C JOIN SER_DET S USING(CID)

-- Q-2
select a.cid,a.cname,b.sid from customer a,ser_det b where a.cid not in (select b.cid from ser_det b) group by cid

select a.eid,a.ename,b.sid,b.comm from employee a,ser_det b where a.eid=b.eid and comm in(0,null)

select a.ename ,max(b.comm) from employee a,ser_det b 
where a.eid=b.eid and a.eid in(select eid from ser_det where comm =(select max(comm) from ser_det))

select a.eid,a.ename,b.sid,b.comm from employee a,ser_det b where a.eid in (select distinct(eid) from ser_det where comm in(0,null))order by comm 

select ename from employee(select * from (select sum(c.comm)from ser_det c group by c.eid having count(c.eid) > 1) s limit 1
select a.ename,b.comm from employee a join ser_det b on a.eid=b.eid where comm in(select sum(c.comm)from ser_det c group by c.eid having count(c.eid) > 1) 

select sum(1) from sparepart

select distinct(cid) from ser_det

select * from customer limit 4	 offset 4
select * from (
   select * from customer order by cid desc limit 4)Var2 order by cid asc

select * from customer order by cid desc limit 4

select cname from customer where cid in (select cid from ser_det where total in(select max(total)from ser_det))-- cname who paid max amount

select cname from customer where cid in (select cid from ser_det where total in(select min(total)from ser_det))-- cname who paid min amount 

select * from employee where edol is not null

select count(distinct(cid)) from ser_det

 select *from  (select *, row_number() over(order by SPID) AS rownum  
FROM Sparepart) s where  ROWNUM >=(SELECT COUNT(1)/2 FROM sparepart) ORDER BY SPID LIMIT 1

select a.sid,b.spid,b.spunit,b.spname from ser_det a,sparepart b where a.spid=b.spid



select cid,cname from customer where cid in (select cid from ser_det where typ_ser='color')
  

  select a.ename,(12*(a.esal+b.comm))AS ANNUAL_SALARY from employee a ,ser_det b where a.eid=b.eid
   
select a.vname,b.spname,c.spid from purchase c join vendors a on a.vid=c.vid 
join sparepart b on c.spid=b.spid where b.spname='TWO WHEELER ENGINE OIL'


select a.total,b.spname from purchase a,sparepart b where a.spid=b.spid and spname like '%colour%'

select a.spid,b.spname from purchase a,sparepart b 
where a.spid=b.spid and a.spid not in (select b.spid from ser_det b)

select spid,spname,sprate from sparepart where spid not in (select spid from purchase)

select sum(esal)>sum(total) as loss , sum(esal)<sum(total) as profit from employee,ser_det

select cname from customer where cid in (select cid from ser_det group by cid having count(cid) > 1)


select a.spname,b.vadd,c.pid,c.pqty from purchase c join sparepart a on a.spid=c.spid
join vendors b on  b.vid=c.vid group by spname

SELECT (SELECT COUNT(*) FROM SER_DET WHERE TYP_VEH = 'TWO WHEELER') AS T_C,
         (SELECT COUNT(*) FROM SER_DET WHERE TYP_VEH = 'FOUR WHEELER') AS F_C
         
         
SELECT C.CNAME,S1.SPNAME,S.SP_G FROM CUSTOMER C,SER_DET S,SPAREPART S1
  WHERE S.SP_G=(SELECT MAX(SP_G) FROM SER_DET) AND C.CID=S.CID AND S.SPID=S1.SPID        

select a.cname,b.spname from customer a,sparepart b 
where cid in(select cid from ser_det where sp_g in (select max(sp_g) from ser_det))order by spname desc limit 2

SELECT V.VNAME FROM PURCHASE P,VENDORS V,SPAREPART S 
WHERE P.SPGST=(SELECT MAX(SPGST) FROM PURCHASE) AND V.VID=P.VID AND S.SPID=P.SPID

SELECT S.SPNAME,E.ENAME FROM PURCHASE P,EMPLOYEE E,SPAREPART S WHERE E.EID=P.RCV_EID AND P.SPID=S.SPID;

SELECT CNAME FROM CUSTOMER
    WHERE CID = (SELECT CID FROM SER_DET WHERE VEH_NO = 'MH-14PA335');

SELECT CNAME FROM CUSTOMER C,SER_DET S WHERE S.VEH_NO='MH-14PA335'AND C.CID=S.CID;

SELECT C.CNAME,S.SER_DATE FROM CUSTOMER C,SER_DET S WHERE C.CADD='NEW YORK' AND C.CID=S.CID


select v.vname,s.spname,p.total from vendors v,sparepart s,purchase p
 where p.total=(select max(total)from purchase) and v.vid=p.vid and s.spid=p.spid 
 
 select a.ename,a.eid from employee a,ser_det b where a.eid=b.eid and ejob !='mechanic' group by ename

 select ejob,count(*) from employee group by ejob having count(*)>2


select a.eid,a.ename,a.ejob,a.eadd,a.econtact,a.esal,a.edoj,a.edol,count(b.eid) from employee a,ser_det b where a.eid=b.eid group by b.eid


SELECT E.ENAME,E.ejob,COUNT(*) FROM EMPLOYEE E,SER_DET S WHERE E.EJOB IN ('PAINTER','FITTER') AND E.EID=S.EID GROUP BY E.ENAME;



select * from employee  limit 1 offset 3


SELECT E.ENAME,E.EJOB,CASE WHEN S.COMM = 0 THEN 100 ELSE S.COMM END FROM EMPLOYEE E, SER_DET S
		WHERE E.EID = S.EID
     
select ser_date,count(*)from ser_det group by ser_date order by ser_date desc

select * from ser_det where cid in (select cid from customer where cadd in (select cadd from customer group by cadd having count(cadd)>1))

select a.sid,b.cname from ser_det a,customer b where a.cid=b.cid

 select  c.cname,c.cadd,c.cid,count(*) from customer c,ser_det s
    where c.cid=S.cid group by c.cname,c.cadd,c.cid; 

select vadd from vendors where 
vid=(select vid from purchase where spid =(select spid from purchase where total=(select max(total) from purchase)))

select a.cname,max(ser_amt) from customer a,ser_det b where a.cid=b.cid group by cname

select a.cname,a.cadd,a.cid,count(*) from customer a,ser_det b where a.cid=b.cid group by a.cname,a.cadd,a.cid   


select vadd from vendors where vid =(select vid from purchase 
where spid =(select spid from purchase
where total = (select max(total) from purchase)))  


select a.*,b.* from employee a,ser_det b 
where a.esal is null and a.eid=b.eid
   
   
select vadd,sum(total) from vendors v,purchase p where v.vid=p.vid group by vadd; 

 SELECT CNAME,CADD
   FROM CUSTOMER C,SER_DET S
   WHERE C.CID=S.CID
   GROUP BY CNAME,CADD
   HAVING SUM(S.TOTAL)>(SELECT MAX(SER_AMT) FROM SER_DET);
   
   SELECT CNAME, CADD
     FROM CUSTOMER
    WHERE CID IN (SELECT CID
                    FROM SER_DET
                   GROUP BY CID
                  HAVING SUM(TOTAL) = (SELECT MAX(SER_AMT)
                    FROM SER_DET));

select cname,cadd from customer where cid in 
(select cid from ser_det group by cid having sum(total)>(select max(ser_amt)from ser_det))


select a.ename,(count(b.sid)),(case when ((count(b.sid))  between 4 and 5) then 'A'
when((count(b.sid))  between 2 and 3)then 'B' 
when ((count(b.sid)) between 0 and 1)then 'C'end ) as 'Q'
 from employee a,ser_det b where a.eid=b.eid group by ename 

select a.ename,count(b.sid),(case count(b.sid) when 1 or 0 then 'D'
when 3 then 'B' when 2 then 'C' when 4 then 'A' end) as 'rank'
 from employee a,ser_det b where a.eid=b.eid group by ename 
 

 select esal ,case when esal>=(select max(esal)from employee)then 'A'
 when esal<=(select max(esal) from employee)then 'B' 
 else 'N/A' end as grade  from employee
 
 select a.ename,a.ejob,case when b.comm=0 then 100 
 else b.comm end  as COMM from employee a,ser_det b where a.eid=b.eid
 
 select a.cname,b.veh_no,c.spname,d.pdate,e.vname,e.vadd,f.ename from customer a,ser_det b,sparepart c,vendors e,purchase d,employee f
 where b.veh_no='MH-14PA335' and f.eid=b.eid and e.vid=d.vid and c.spid=d.spid and a.cid=b.cid and b.spid=c.spid

 select ser_date,count(*) from ser_det group by ser_date order by ser_date desc
 
select a.ename, case count(sid) when 1 then 'D' when 2 then 'C' when 3 then 'B' when 4 then 'A' end
from employee a, ser_det b
where a.eid = b.eid
group by a.ename

-- List the customer name and sparepart name used for their vehicle and  vehicle type
   
select a.cname,b.spname,c.typ_veh from customer a,sparepart b,ser_det c where a.cid=c.cid and b.spid=c.spid

  select spname,ename,cname,sp_rate,ser_amt,qty from sparepart s,employee e,customer c,ser_det b
 where s.spid=b.spid and c.cid=b.cid and e.eid=b.eid;
 
 -- Q53 specify the vehicles owners who’ s tube damaged.
 
 select a.cname from customer a where a.cid in (select b.cid from ser_det b where typ_ser='tube damaged')
 
 -- Specify the details who have taken full service.
 
 select * from customer a where a.cid in (select b.cid from ser_det b where typ_ser='full servicing' )
 
 
--  Select the employees who have not worked yet and left the job.
   
 select ename from employee where edol is not null and eid not in(select a.eid from ser_det a)
 
 
  
   select * from employee where eid =(select eid from ser_det where ser_date =(select min(ser_date) from ser_det));

 
 
 select * from ser_det where ser_date in (select ser_date from ser_det where date(ser_date)%2=0)
 select * from ser_det where ser_date in (select ser_date from ser_det where date(ser_date)%2!=0)
 
 
 
  select vname from vendors where vid not in (select vid from purchase where spid in (select spid from ser_det))
                  

