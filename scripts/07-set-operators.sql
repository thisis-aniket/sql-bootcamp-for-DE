-- Set Operators

SELECT * FROM employees;

SELECT * FROM customers;

-- Union
-- Returns all DISTINCT rows from both tables
-- Combine data from employees and customers into one table

SELECT 
	firstname,
    lastname
FROM SalesDB.customers
UNION
SELECT 
	firstname,
    lastname
FROM SalesDB.employees;

-- Union all
-- Returns all rows from both tables with duplicates
-- Combine data from employees and customers into one table with duplicates
SELECT 
	firstname,
    lastname
FROM SalesDB.customers
UNION ALL
SELECT 
	firstname,
    lastname
FROM SalesDB.employees;

-- Except (Minus)
-- Returns all distinct rows from first query that are not found in the second query
-- Find employees who are not customers at the same time
SELECT
	firstname,
    lastname
FROM SalesDB.employees
EXCEPT
SELECT
	firstname,
    lastname
FROM SalesDB.customers;

-- Intersect
-- Returns only the rows that are common on both queries
-- Find employees who are also custoemrs
SELECT
	firstname,
    lastname
FROM SalesDB.employees
INTERSECT
SELECT
	firstname,
    lastname
FROM SalesDB.customers;

-- Orders data are stores in separate tables (Orders and OrdersArchive)
-- Combine all orders data into one report without duplicates
-- Best Practice: Always define column names instead of * symbol for data quality check 

SELECT
	'orders' AS SourceTable,
	`orders`.`productid`,
    `orders`.`customerid`,
    `orders`.`salespersonid`,
    `orders`.`orderdate`,
    `orders`.`shipdate`,
    `orders`.`orderstatus`,
    `orders`.`shipaddress`,
    `orders`.`billaddress`,
    `orders`.`quantity`,
    `orders`.`sales`,
    `orders`.`creationtime`
FROM SalesDB.orders
UNION
SELECT
	'orders_archive' AS SourceTable,
	`orders_archive`.`productid`,
    `orders_archive`.`customerid`,
    `orders_archive`.`salespersonid`,
    `orders_archive`.`orderdate`,
    `orders_archive`.`shipdate`,
    `orders_archive`.`orderstatus`,
    `orders_archive`.`shipaddress`,
    `orders_archive`.`billaddress`,
    `orders_archive`.`quantity`,
    `orders_archive`.`sales`,
    `orders_archive`.`creationtime`
FROM SalesDB.orders_archive;
