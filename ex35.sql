SELECT 
	emp_no,
    department,
	salary,
	SUM(salary) OVER (PARTITION BY department) AS department_payroll, 
    SUM(salary) OVER () AS total_payroll
FROM employees;