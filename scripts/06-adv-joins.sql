-- Explore SalesDB Database
USE SalesDB;

SELECT * FROM SalesDB.customers;

SELECT * FROM SalesDB.employees;

SELECT * FROM SalesDB.orders;

SELECT * FROM SalesDB.orders_archive;

SELECT * FROM SalesDB.products;

-- Advance Joins
-- Using SalesDB retrieve list of all orders, along with related customers, product and employee details for each order
-- Display; order ID, customers name, product name, sales, price, sales persons name

SELECT
	o.orderid,
    c.firstname AS customerfirstname,
    c.lastname AS customerlastname,
    p.product AS productname,
    p.price,
    e.firstname AS salespersonfirstname,
    e.lastname AS salespersonslastname
FROM SalesDB.orders AS o
LEFT JOIN SalesDB.customers AS c
ON c.customerid = o.customerid
LEFT JOIN SalesDB.products AS p
ON p.productid = o.productid
LEFT JOIN SalesDB.employees AS e
ON e.employeeid = o.salespersonid;