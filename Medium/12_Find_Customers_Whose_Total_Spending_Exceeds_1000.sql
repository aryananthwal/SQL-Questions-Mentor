-- Challenge 12: Find Customers Whose Total Spending Exceeds 1,000
-- Medium
-- JOIN
-- SUM
-- GROUP BY
-- HAVING

-- SQL Task
-- Using the customers and orders tables below, find customers whose total order amount is greater than 1,000.

-- Return customer_id, customer_name, and total_spending.

-- Sort the results by total spending from highest to lowest.
-- Sample Data
-- Table: customers
-- customer_id	customer_name
-- 1	Alice
-- 2	Bob
-- 3	Charlie
-- 4	Diana
-- 5	Ethan

-- Table: orders
-- order_id	customer_id	amount
-- 101	1	500
-- 102	3	800
-- 103	1	700
-- 104	5	450
-- 105	3	400
-- 106	2	1200
-- 107	5	300


SELECT c.customer_id, c.customer_name, SUM(o.amount) AS total_spending
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING total_spending > 1000
ORDER BY total_spending DESC;