SELECT 
    first_name, IFNULL(AVG(grade), '0') AS average
FROM
    students
        LEFT JOIN
    papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;