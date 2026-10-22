-- Challenge 8: Find Employees Earning More Than Their Department's Average
-- Medium
-- AVG
-- GROUP BY
-- JOIN

-- SQL Task
-- Using the employees table below, find employees whose salary is greater than the average salary of their own department.

-- Return employee_name, department, salary, and average_salary.

-- Sort the results by department, then by salary in descending order.
-- Sample Data
-- Table: employees
-- employee_id	employee_name	department	salary
-- 1	Alice	Sales	60000
-- 2	Bob	IT	75000
-- 3	Charlie	Sales	45000
-- 4	Diana	Sales	85000
-- 5	Ethan	HR	52000
-- 6	Fiona	IT	70000
-- 7	George	HR	48000
-- 8	Hannah	IT	65000

SELECT e.employee_name, e.department, e.salary, da.average_salary
FROM employees AS e
JOIN (
    SELECT department, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
) AS da
ON e.department = da.department
WHERE e.salary > da.average_salary
ORDER BY e.department, e.salary DESC;