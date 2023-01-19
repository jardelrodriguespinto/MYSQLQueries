SELECT 
	emp_no,
    department,
	salary,
	COUNT(salary) OVER (PARTITION BY department) AS department_count, 
    AVG(salary) OVER () AS company_avg 
FROM employees;