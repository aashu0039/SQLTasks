use Internship;
create view v1 AS 
select customerName,city
from customer
where customerid=(
 select customerid from customer
 order by customerid desc
 limit 1);
 
 SELECT * FROM v1;
