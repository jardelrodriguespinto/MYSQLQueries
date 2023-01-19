SELECT first_name, last_name, ROUND(rating, 1) AS rating FROM reviewers
JOIN reviews ON reviewers.id = reviews.reviewer_id
