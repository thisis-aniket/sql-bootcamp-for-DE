-- Comparison operator
-- All customers with country Germany
SELECT *
FROM customers
WHERE country = "Germany";

-- All customers with country not Germany (<> or !=)
SELECT *
FROM customers
WHERE country <> "Germany";

-- Score greater than or equal to 500
SELECT *
FROM customers
WHERE score >= 500;

-- Score less than or equal to 500
SELECT *
FROM customers
WHERE score <= 500;

-- Logical operator
-- Country is USA and score is greater than 500
SELECT *
FROM customers
WHERE country = "USA" AND score > 500;

-- Either from USA or have score greater than 500
SELECT *
FROM customers
WHERE country = "USA" OR score > 500;

-- Score not less than 500
SELECT *
FROM customers
WHERE NOT score < 500;

-- Score falls between range 100 to 500
SELECT * 
FROM customers
WHERE score BETWEEN 100 AND 500;

-- IN Operator
-- Retrieve all customers from either Germany or the USA.
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');

-- Pattern matching - LIKE
-- Find all customers whose first name starts with 'M'.
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n'.
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains 'r'.
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first name has 'r' in the third position.
SELECT *
FROM customers
WHERE first_name LIKE '__r%';