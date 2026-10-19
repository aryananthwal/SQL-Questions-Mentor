-- Challenge 1: Filter and Sort Employees
-- Easy
-- WHERE
-- ORDER BY

-- SQL Task
-- Find all employees who work in the Sales department and earn more than 50,000.

-- Return employee_name, salary, and department, sorted by salary from highest to lowest.
-- Sample Data
-- Table: employees
-- employee_id	employee_name	department	salary
-- 1	Alice	Sales	60000
-- 2	Bob	IT	75000
-- 3	Charlie	Sales	45000
-- 4	Diana	Sales	85000
-- 5	Ethan	HR	52000
-- 6	Fiona	Sales	70000

SELECT employee_name, salary, department
FROM employees
WHERE department = 'Sales' AND salary > 50000
ORDER BY salary DESC;