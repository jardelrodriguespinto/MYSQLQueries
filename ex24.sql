SELECT 
    title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM
    full_reviews
GROUP BY title
HAVING AVG(rating) > 7;