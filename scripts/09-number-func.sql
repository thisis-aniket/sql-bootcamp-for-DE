-- Number funcions

-- Round
SELECT
    3.516 AS NUM,
ROUND(3.516, 2) AS round_2,
ROUND(3.516, 1) AS round_1,
ROUND(3.516, 0) AS round_0;

-- Absolute - Returns the absolute (positive) value of number, removing any negative sign
SELECT
-10,
ABS(-10),
ABS(10)