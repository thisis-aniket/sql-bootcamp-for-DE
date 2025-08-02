-- Data Defination Language (DDL)
-- Create, Alter, Drop

-- Create table
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(100),
    birth_date DATE,
    phone VARCHAR(13),
    CONSTRAINT pk_person PRIMARY KEY (id)
);

SELECT * FROM persons;

-- Alter table
-- Add new column called email to persons table
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

SELECT * FROM persons;

-- Remove column phone
ALTER TABLE persons
DROP COLUMN phone;

SELECT * FROM persons;

-- Delete table persons
DROP TABLE persons;
