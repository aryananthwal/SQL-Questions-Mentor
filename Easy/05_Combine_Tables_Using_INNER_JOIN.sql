-- Challenge 5: Combine Tables Using INNER JOIN
-- Easy
-- INNER JOIN
-- WHERE
-- ORDER BY

-- SQL Task
-- You have two tables: employees and departments.

-- Find the names of employees who work in the Engineering department.

-- Return employee_name and department_name, sorted alphabetically by employee name.
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

SELECT e.employee_name, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_name = 'Engineering'
ORDER BY e.employee_name;