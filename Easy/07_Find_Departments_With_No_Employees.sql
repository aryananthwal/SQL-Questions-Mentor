-- Challenge 7: Find Departments With No Employees
-- Easy
-- LEFT JOIN
-- IS NULL
-- ORDER BY

-- SQL Task
-- Find departments that have no employees assigned to them.

-- Return department_id and department_name, sorted by department_id in ascending order.
-- Sample Data
-- Table: employees
-- employee_id	employee_name	department_id
-- 1	Alice	10
-- 2	Bob	20
-- 3	Charlie	10
-- 4	Diana	30
-- 5	Ethan	20
-- Table: departments
-- department_id	department_name
-- 10	Engineering
-- 20	Sales
-- 30	HR
-- 40	Marketing
-- 50	Finance

SELECT d.department_name, d.department_id
FROM departments AS d
LEFT JOIN employee AS e
ON d.department_id = e.department_id
WHERE e.department_id IS NULL
ORDER BY d.department_id;