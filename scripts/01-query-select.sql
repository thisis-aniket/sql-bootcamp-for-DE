USE mydatabase;

-- Retrieve the customers with a score not equal to 0
SELECT * 
FROM customers
WHERE score != 0;

-- Retrieve the customers from germany
SELECT
    firstname,
    country
FROM customers
WHERE country = 'Germany';

-- Order by
-- Retrieve all customers and sort the results by the highest score first
SELECT *
FROM customers
ORDER BY score DESC;

-- Nested order by
-- Sort the results by the country and then by the highest score
-- Order of column matters while nested sorting 
SELECT *
FROM customers
ORDER BY country ASC, score DESC;

-- Group by
-- Find total score for each country
SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Find total score and total number of customers for each country
SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;

-- Having clause
-- Can be used only with group by
SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country; 

-- Find the average score for each country considering only customers with a score not equal to 0 
-- and return only those countries with an average score greater than 430
SELECT 
    country,
    AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING average_score > 430;

-- Return unique country
SELECT DISTINCT country
FROM customers;

-- Retrieve top 3 customers with highest score 
-- top (sql server)
-- limit (mysql)
SELECT * 
FROM customers
ORDER BY score DESC
LIMIT 3;

-- Retrieve lowest 2 customers with lowest score
SELECT * 
FROM customers
ORDER BY score ASC
LIMIT 2;

-- get the two most recent orders
SELECT * 
FROM orders
ORDER BY order_date DESC
LIMIT 2;
