SELECT 
    CONCAT_WS(' - ', title, author_fname, author_lname) AS informations
FROM
    books;