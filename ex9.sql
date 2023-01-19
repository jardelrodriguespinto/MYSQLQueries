SELECT author_fname, author_lname, MIN(released_year)
FROM books
GROUP BY author_fname, author_lname;