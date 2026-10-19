-- Challenge 3: Average Salary by Department
-- Easy
-- AVG
-- GROUP BY
-- ORDER BY

-- SQL Task
-- Using the employees table below, find the average salary for each department.

-- Return department and average_salary. Sort the results by average salary from highest to lowest.
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

SELECT department, AVG(salary)  as average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;