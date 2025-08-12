use Internship;
select CustomerName from customer
where customerid=(select customerid from customer order by customerid desc limit 1);
  -- in subquery
SELECT CustomerName
FROM customer
WHERE customerid IN (
    SELECT customerid
    FROM orders
    WHERE product IN ('Laptop', 'Mouse')
);
-- exists
SELECT CustomerName
FROM customer c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customerid = c.customerid
);

-- = subquery

SELECT city
FROM customer
WHERE customerid = (
    SELECT customerid
    FROM orders
    WHERE product = 'Keyboard'
);

select * from customer;
