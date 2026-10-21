-- Challenge 6: Find Employees Without a Matching Department
-- Easy
-- LEFT JOIN
-- IS NULL
-- ORDER BY

-- SQL Task
-- Using the two tables below, find employees who do not have a matching department record.

-- Return employee_name and department_id, sorted alphabetically by employee name.
-- Sample Data
-- Table: employees
-- employee_id	employee_name	department_id
-- 1	Alice	10
-- 2	Bob	20
-- 3	Charlie	50
-- 4	Diana	30
-- 5	Ethan	NULL
-- 6	Fiona	60
-- Table: departments
-- department_id	department_name
-- 10	Engineering
-- 20	Sales
-- 30	HR
-- 40	Marketing

SELECT e.employee_name, e.department_id
FROM employees as e
LEFT JOIN departments as d
On e.department_id = d .department_id
WHERE d.department_name IS NULL
ORDER BY e.employee_name;