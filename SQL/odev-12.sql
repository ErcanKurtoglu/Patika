/*
--1-)
SELECT (length) FROM film
WHERE length > 
(
	SELECT AVG(length) FROM film
);

--2-)
SELECT COUNT(rental_rate) FROM film
WHERE rental_rate=
(
	SELECT MAX(rental_rate) FROM film
);

--3-)
SELECT rental_rate,replacement_cost FROM film
WHERE rental_rate=
(
	SELECT MIN(rental_rate) FROM film
)
AND
	 replacement_cost=
(
	SELECT MIN(replacement_cost) FROM film
);

SELECT COUNT(customer_id) FROM payment
WHERE customer_id=376;
*/

--4-)
SELECT customer_id, COUNT(*) AS customer_count FROM payment
GROUP BY customer_id
HAVING COUNT(*) = 
(
    SELECT MAX(customer_count) FROM 
	(
        SELECT customer_id, COUNT(*) AS customer_count FROM payment
        GROUP BY customer_id
    ) AS subquery
);



