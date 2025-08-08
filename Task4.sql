use Internship;
CREATE TABLE sales (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    product TEXT,
    category TEXT,
    quantity INTEGER,
    price REAL,
    sale_date DATE
);

INSERT INTO sales (product, category, quantity, price, sale_date) VALUES
('Laptop', 'Electronics', 2, 50000, '2025-08-01'),
('Mouse', 'Electronics', 5, 500, '2025-08-02'),
('Chair', 'Furniture', 3, 1500, '2025-08-01'),
('Table', 'Furniture', 1, 3000, '2025-08-03'),
('Keyboard', 'Electronics', 4, 1000, '2025-08-02');

SELECT SUM(quantity * price) AS total_sales
FROM sales;

SELECT COUNT(*) AS total_transactions
FROM sales;

SELECT AVG(price) AS average_price
FROM sales;

SELECT category, SUM(quantity * price) AS category_sales
FROM sales
GROUP BY category;

SELECT category, COUNT(*) AS product_count
FROM sales
GROUP BY category;

SELECT category, AVG(price) AS avg_price
FROM sales
GROUP BY category;