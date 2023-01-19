SELECT 
	emp_no,
    department,
    salary,
    MIN(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_min
FROM employees;