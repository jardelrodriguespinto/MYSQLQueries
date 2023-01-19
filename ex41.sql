SELECT  
	emp_no,
	department,
	salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary),
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC)
FROM employees;