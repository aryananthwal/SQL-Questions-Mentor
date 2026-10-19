-- Challenge 2: Department-Wise Employee Count
-- Easy
-- COUNT
-- GROUP BY
-- ORDER BY

-- SQL Task
-- Using the employees table below, find the number of employees in each department.

-- Return two columns: department and employee_count.

-- Sort the results by employee count from highest to lowest.
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
ORDER BY COUNT(employee_id) DESC;