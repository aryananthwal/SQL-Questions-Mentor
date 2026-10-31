-- Challenge 13 — Customers Spending More Than Average
-- Difficulty: Medium+

-- Skills: JOIN, SUM, AVG, GROUP BY, subqueries
-- Task
-- Using the customers and orders tables, find customers whose total spending is greater than the average total spending per customer among customers who have placed orders.

-- Return:
-- - customer_id
-- - customer_name
-- - total_spending
-- Sort by total_spending in descending order.
-- Sample data
-- customers
-- customer_id	customer_name
-- 1	Alice
-- 2	Bob
-- 3	Charlie
-- 4	Diana
-- 5	Ethan

-- orders
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
HAVING total_spending > (
    SELECT AVG(total_spending) AS average_spending
    FROM (
        SELECT SUM(o.amount) AS total_spending
        FROM customers AS c
        JOIN orders AS o
        ON c.customer_id = o.customer_id
        GROUP BY c.customer_id, c.customer_name
    ) AS customer_spending
)
ORDER BY total_spending DESC;