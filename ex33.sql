SELECT 
	emp_no,
    department,
	salary,
    AVG(salary) OVER (PARTITION BY department) AS department_avg, 
    AVG(salary) OVER () AS company_avg 
FROM employees;