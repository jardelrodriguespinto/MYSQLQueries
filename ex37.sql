SELECT 
	emp_no,
    department,
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS 'row_number',
	RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank1,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank1,
    RANK() OVER(ORDER BY salary DESC) AS overrall_salary_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS 'dense_rank'
FROM employees ORDER BY department;
