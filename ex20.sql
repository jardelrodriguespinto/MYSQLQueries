SELECT title, rating, CONCAT(first_name,'', last_name) AS reviewers FROM series
JOIN reviews ON series.id = reviews.reviewer_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id  
GROUP BY title, rating, reviewers;