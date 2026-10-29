-- Challenge 11: Find Customers Who Have Never Placed an Order
-- Medium
-- LEFT JOIN
-- IS NULL
-- ORDER BY

-- SQL Task
-- You have two tables: customers and orders.

-- Find all customers who have never placed an order.

-- Return customer_id and customer_name, sorted by customer_id in ascending order.
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
-- 103	1	300
-- 104	5	450


SELECT c.customer_id, c.customer_name
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL
ORDER BY c.customer_id;