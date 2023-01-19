SELECT CONCAT (
	author_fname,
    ' ',
    author_lname
) AS author_fullname,
COUNT(*) AS amount
FROM books GROUP BY author_fullname;