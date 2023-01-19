SELECT author_fname, author_lname, MAX(released_year)
FROM books
GROUP BY author_fname, author_lname;