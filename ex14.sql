SELECT 
    first_name, IFNULL(AVG(grade), '0') AS average,
    CASE 
		WHEN IFNULL(AVG(grade), '0') >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;