-- Dates and Timestamp functions

-- > SQL_SERVER
-- DATEPART(day, date_value)
-- DATENAME(part, date_value)
-- DATETRUNC(part, date_value)
SELECT
	orderid,
    creationtime,
-- DATETRUNC(part, date_value)
    DATE_FORMAT(creationtime, "%Y-%m-%d %H:%i:00") AS truncated_min,
    DATE_FORMAT(creationtime, "%Y-%m-%d %H:00:00") AS truncated_hour,
    DATE_FORMAT(creationtime, "%Y-%m-%d 00:00:00") AS truncated_day,
    DATE_FORMAT(creationtime, "%Y-%m-00 00:00:00") AS truncated_month,
-- DATENAME(part, date_value)
    DAYNAME(creationtime) AS day_name,
    DAYOFWEEK(creationtime) AS day_week,
    QUARTER(creationtime) AS day_quarter,
    MONTHNAME(creationtime) AS month_name,
    DAYNAME(creationtime) AS day_name,
-- DATEPART(part, date_value)
    YEAR(creationtime) AS year,
    MONTH(creationtime) AS month,
    DAY(creationtime) AS day
FROM salesDB.orders;

-- Use Cases
-- How Many Orders were placed each year?
SELECT 
	YEAR(orderDate),
    COUNT(*) NrOfOrders
FROM SalesDB.Orders
GROUP BY YEAR(orderDate);

-- Each month
SELECT 
	MONTHNAME(orderDate),
    COUNT(*) NrOfOrders
FROM SalesDB.Orders
GROUP BY MONTHNAME(orderDate);

-- Show all orders that were placed during the month of february
SELECT *
FROM SalesDB.orders
WHERE MONTH(orderDate) = 2;

-- Format, Convert, Cast
-- Date format: yyyy-MM-dd HH:mm:ss
-- Format
SELECT 
	orderid,
	creationTime,
	DATE_FORMAT(creationTime, '%e') dd ,
	DATE_FORMAT(creationTime, '%a') ddd,
	DATE_FORMAT(creationTime, '%W') dddd,
	DATE_FORMAT(creationTime, '%e/%c/%Y') IND_format
FROM SalesDB.orders;

-- Day Wed Jan Q1 2025 12:34:56 PM
SELECT
	orderid,
    CONCAT(
		'Day ', 
		DATE_FORMAT(creationtime, '%a ' '%b '), 
		'Q', QUARTER(creationTime),
        DATE_FORMAT(creationtime, ' %r')
    )
    AS cust_format
FROM SalesDB.orders;

SELECT 
	DATE_FORMAT(orderDate, '%b ' '%y') OrderDate, 
	COUNT(*)
FROM SalesDB.orders
GROUP BY DATE_FORMAT(orderDate, '%b ' '%y');