-- Challenge 4: Filter Groups Using HAVING
-- Easy
-- COUNT
-- GROUP BY
-- HAVING

-- SQL Task
-- Using the employees table below, find departments that have at least 3 employees.

-- Return department and employee_count, sorted by employee count from highest to lowest.
-- Sample Data
-- employee_id	employee_name	department	salary
-- 1	Alice	Sales	60000
-- 2	Bob	IT	75000
-- 3	Charlie	Sales	45000
-- 4	Diana	Sales	85000
-- 5	Ethan	HR	52000
-- 6	Fiona	IT	70000
-- 7	George	HR	48000
-- 8	Hannah	IT	65000

SELECT department, COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department
HAVING employee_count >= 3
ORDER BY employee_count DESC;