 SELECT 
    IFNULL(SUM(amount), 0) AS total, first_name, last_name
FROM
    orders
        RIGHT JOIN
    customers ON orders.customer_id = customers.customer_id
GROUP BY first_name , last_name
ORDER BY total;
 
 