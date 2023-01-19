SELECT 
    emp_no,
    department,
    salary,
    AVG(salary) OVER(ORDER BY salary DESC)
FROM
    employees;