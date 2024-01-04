USE sakila;
SELECT category_id AS category, COUNT(film_id) AS number_of_films
FROM film_category 
GROUP BY category;

SELECT * FROM sakila.store as s
JOIN sakila.address as a
ON s.address_id = a.address_id
JOIN sakila.city as ci
ON a.city_id = ci.city_id
JOIN sakila.country as co
ON ci.country_id = co.country_id;


SELECT sto.store_id, sto.manager_staff_id, SUM(pay.amount) AS total_revenue
FROM sakila.payment AS pay
JOIN sakila.staff AS st 
ON pay.staff_id = st.staff_id
JOIN sakila.store AS sto 
ON st.store_id = sto.store_id
GROUP BY sto.store_id, sto.manager_staff_id;

SELECT c.category_id,
       AVG(f.length) AS average_running_time
FROM film_category fc
JOIN film as f 
ON fc.film_id = f.film_id
JOIN category as c 
ON fc.category_id = c.category_id
GROUP BY c.category_id;

