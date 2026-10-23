-- Challenge 9: Find the Second-Highest Salary
-- Medium
-- MAX
-- WHERE
-- Subqueries

-- SQL Task
-- Using the employees table below, find the second-highest distinct salary.

-- Return one column named second_highest_salary.

-- If there is no second-highest distinct salary, return NULL.
-- Sample Data
-- employee_id	employee_name	department	salary
-- 1	Alice	Sales	60000
-- 2	Bob	IT	75000
-- 3	Charlie	Sales	45000
-- 4	Diana	Sales	85000
-- 5	Ethan	HR	52000
-- 6	Fiona	IT	75000
-- 7	George	HR	48000

SELECT MAX(salary) AS second_highest_salary
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);