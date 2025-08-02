-- Data manipulation language (DML)
-- Insert, update, and delete

-- Manual inserts
INSERT INTO customers (id, first_name, country, score)
VALUES
    (6, 'Aniket', 'India', 980),
    (7, 'Shiksha', 'India', 800);

-- View all records from customers
SELECT * FROM customers;

-- Inserts using select
-- Insert data from customers into persons
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT 
    id,
    first_name,
    NULL,
    'NA'
FROM customers;

-- View all records from persons
SELECT * FROM persons;

-- Change score of customer with ID 7 to 0 and update country to UK
UPDATE customers
SET score = 0,
    country = "UK"
WHERE id = 7;

-- Delete all customers with ID greater than 5
DELETE FROM customers 
WHERE id > 5;

-- Delete all data from persons table
TRUNCATE TABLE persons;
