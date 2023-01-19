SELECT  
	emp_no,
	department,
	salary,
    NTILE(4) OVER(PARTITION BY department) AS salary_quartile,
	NTILE(4) OVER(ORDER BY salary DESC) AS dept_salary_quartile
FROM employees;