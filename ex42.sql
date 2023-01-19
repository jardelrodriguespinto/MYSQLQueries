SELECT 
	emp_no,
    department,
    salary,
     salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_diff
FROM employees;