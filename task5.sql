use Internship;
create table customer(
customerid int primary key,
CustomerName varchar(20),
city varchar(20)
);

create table orders(
orderid int primary key,
customerid int,
product varchar(50),
foreign key (customerid) references customer(customerid)
);

INSERT INTO customer (customerid, CustomerName, City) VALUES
(1, 'Alice', 'Pune'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Delhi');

INSERT INTO orders (orderid, customerid, product) VALUES
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 3, 'Monitor'); 

-- inner join
SELECT customer.CustomerName, orders.product
FROM customer
INNER JOIN orders
ON customer.customerid = orders.customerid;

-- left join
SELECT customer.CustomerName, orders.product
FROM customer
LEFT JOIN orders
ON customer.customerid = orders.customerid;

-- right join
SELECT customer.CustomerName, orders.product
FROM customer
RIGHT JOIN orders
ON customer.customerid = orders.customerid;

-- full outer join

SELECT customer.CustomerName, orders.product
FROM customer
LEFT JOIN orders
ON customer.customerid = orders.customerid

UNION

SELECT customer.CustomerName, orders.product
FROM customer
RIGHT JOIN orders
ON customer.customerid = orders.customerid;


