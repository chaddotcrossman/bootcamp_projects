SELECT *
FROM customer_LIST

SELECT COUNT(NAME)
FROM customer_list



SELECT DISTINCT  customer_id
FROM payment

SELECT *
FROM customer

SELECT * 
FROM rental 

SELECT DISTINCT count(rental_id)
FROM rental 

SELECT customer_id ,count(customer_id)
FROM rental 
GROUP BY customer_id 
HAVING count(rental_id) = 12v


SELECT id, "name"  
FROM customer_list
WHERE id ='318'
GROUP BY id, name 

SELECT  film_id, inventory_id
FROM inventory 
WHERE inventory_id = '4282'
GROUP BY film_id, inventory_id 


SELECT film_id, title
FROM film 
WHERE film_id = '932'
GROUP BY film_id, title 

SELECT customer_id, rental_id
FROM payment 
WHERE customer_id = '12' 

SELECT count(customer_id)rental_id
FROM rental 
WHERE customer_id = '12'
group BY customer_id, rental_id


SELECT film_id, title
FROM film 
WHERE film_id = '932'
GROUP BY film_id, title

SELECT  first_name, last_name 
FROM actor
WHERE actor_id ='63'


SELECT customer_id, inventory_id
FROM rental
WHERE rental_date BETWEEN '2005-07-06 12:00:00.000' AND '2005-07-06 23:59:59.000'
AND customer_id = '318'


SELECT a.first_name ,a.last_name, fa.actor_id 
FROM actor a 
JOIN film_actor fa 
ON fa.actor_id = a.actor_id 
JOIN film f 
ON f.film_id = fa.film_id 

SELECT a.first_name ,a.last_name, count(film_actor.film_id)
FROM actor a
JOIN film_actor fa 
GROUP BY a.first_name, a.last_name 
ORDER BY film_count DESC 


