SELECT genre, AVG(rating) as avg_rating FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;
