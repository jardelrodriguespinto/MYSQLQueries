SELECT 
    title, rating
FROM
    series
        JOIN
    reviews ON series.id = reviews.reviewer_id
GROUP BY title
ORDER BY rating DESC;