-- Challenge 10: Find Employees Earning More Than Their Manager
-- Medium
-- SELF JOIN
-- WHERE
-- ORDER BY

-- SQL Task
-- You have an employees table where manager_id refers to another employee's employee_id.

-- Find employees who earn more than their direct manager.

-- Return employee_name, employee_salary, manager_name, and manager_salary.

-- Sort by employee salary from highest to lowest.
-- Sample Data
-- Table: employees
-- employee_id	employee_name	salary	manager_id
-- 1	Alice	90000	NULL
-- 2	Bob	    65000	1
-- 3	Charlie	95000	1
-- 4	Diana	70000	2
-- 5	Ethan	60000	2
-- 6	Fiona	80000	2
-- 7	George	72000	4

SELECT e.employee_name, e.salary AS employee_salary, m.employee_name, m.salary AS manager_salary
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary
ORDER BY e.salary DESC;