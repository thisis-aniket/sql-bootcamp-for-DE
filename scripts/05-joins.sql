-- Joins

-- No Join 
SELECT * 
FROM customers;

SELECT * 
FROM orders;

-- Inner Join
-- Return only matching rows from both tables
-- Get all customers along with their orders, but only for customers who placed an order
SELECT
	c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;

-- Left Join
-- Rerturn all rows from the left and only matching from right table
-- Get all customers along with their orders including those without orders
SELECT
	c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;

-- Right Join
-- Return all rows from right and only matching from left table 
-- Get all customers along with their orders including orders without matching customers
SELECT
	c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

-- Solve the same task using left join
SELECT 
	c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id;

-- Full Join
-- Return all rows from both tables
-- NOTE: Below query will not work with MYSQL (Works with SQL Server)
-- In MYSQL: Left Join UNION Right Join
SELECT
	c.id,
    c.first_name,
    o.order_id,
    o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id;

-- Left Anti Join
-- Returns rows from the left that has NO MATCH in right table
-- Get all customers who haven't placed any order
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

-- Right Anti Join
-- Returns the row from right that has NO MATCH in right
-- Get all orders without matching customers
SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON o.customer_id = c.id
WHERE c.id IS NULL;

-- Full Anti Join
-- Returns only rows that don't match in either table
-- Find customers with order and orders without customers
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON o.customer_id = c.id
WHERE o.customer_id IS NULL
UNION
SELECT * 
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id
WHERE c.id IS NULL;

-- Get all customers along with their orders, but only for the customers who have placed an order without using INNER JOIN
SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL; 

-- Cross Join
-- Combines every row from left with every row from right (All possible combinations)
SELECT *
FROM customers
CROSS JOIN orders;

-- Self join
-- Joins the table with itself
-- Find pairs of customers from same country
SELECT 
a.first_name,
b.first_name,
a.country
FROM customers a, customers b
WHERE a.id <> b.id
AND a.country = b.country
ORDER BY a.country;