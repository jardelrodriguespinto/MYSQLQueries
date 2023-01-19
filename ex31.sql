SELECT
	emp_no,
    department,
    salary,
    MIN(salary) OVER() AS MIN,
    MAX(salary) OVER() AS MAX
    FROM
    employees;
