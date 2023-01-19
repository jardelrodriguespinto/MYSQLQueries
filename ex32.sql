SELECT
	emp_no,
	AVG(salary)
    OVER(PARTITION BY department)
 FROM
	employees;