SELECT 
	first_name,
    last_name,
    IFNULL(COUNT(rating), '0')  AS COUNT,
    IFNULL(MIN(rating), 0)  AS MIN,
    IFNULL(MAX(rating), 0)  AS MAX,
    IFNULL(AVG(rating), 0)  AS AVG,
    CASE
		WHEN rating IS NULL THEN 'INACTIVE'
        ELSE 'ACTIVE'
    END AS 'STATUS'
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
    GROUP BY first_name, last_name, rating;
