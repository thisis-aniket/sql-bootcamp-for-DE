Use MyDatabase;

-- String Functions

-- Manipulations
-- CONCAT
SELECT 
	first_name,
    country,
    CONCAT(first_name, '-', country) AS country_name
FROM customers;

-- Upper and Lower
SELECT 
	first_name,
    country,
    LOWER(first_name) AS low_name,
    UPPER(first_name) AS up_name
FROM customers;

-- Trim and Length -- Remove extra space before and after string
-- Find customers whose first name contains leading and trailing spaces
SELECT
	first_name,
    LENGTH(first_name) AS len_name,
    LENGTH(TRIM(first_name)) AS len_trim_name
FROM customers
WHERE first_name != TRIM(first_name);

-- Replace
-- Not only replace but also remove
SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '/') AS clean_phone;

-- Calulations
-- Length
SELECT 
	first_name,
    LENGTH(first_name) as len_name
FROM customers;

-- String Extraction
-- Left - Extract Specific number of characters from the start
-- Right - Extract Specific number of characters from the end
SELECT
	first_name,
    LEFT(TRIM(first_name), 2) AS first_2_char,
    RIGHT(TRIM(first_name), 2) AS last_2_char
FROM customers;

-- Substring
-- SUBSTRING(VALUE, START, LENGTH)
SELECT
	first_name,
    SUBSTRING(TRIM(first_name), 2, LENGTH(first_name))
FROM customers;