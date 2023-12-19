use sakila;
-------------------- Ans no 1 ---------------------
SELECT 
    COUNT(*)
FROM
    rental;
-------------------- Ans no 2 ---------------------
SELECT 
    AVG(DATEDIFF(return_date, rental_date)) AS rental_duration
FROM
    rental; 
-------------------- string function Ans no 3 ---------------------
select upper(concat(first_name ," ", last_name)) as Name   from customer;
-------------------- string function Ans no 4 ---------------------
select rental_id ,month(rental_date) as Month from rental;
-------------------- Groupby function Ans no 5 ---------------------
SELECT 
    c.customer_id, COUNT(r.rental_id) AS rental_count
FROM
    customer c
        left JOIN
    rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id ;
-------------------- Groupby function Ans no 6 ---------------------
SELECT 
    s.store_id, SUM(amount)
FROM
    payment p
        JOIN
    staff s ON s.staff_id = p.staff_id
GROUP BY s.store_id; 

-------------------- join function Ans no 7  ---------------------
SELECT 
    title, CONCAT(first_name, last_name) AS name
FROM
    film f
        JOIN
    inventory i ON f.film_id = i.film_id
        JOIN
    rental r ON i.inventory_id = r.inventory_id
        JOIN
    customer rr ON r.customer_id = rr.customer_id ;
-------------------- join function Ans no 8  ---------------------
SELECT 
    CONCAT(first_name, last_name) AS name, title
FROM
    actor
        JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
        JOIN
    film ON film_actor.film_id = film.film_id
WHERE
    title = 'Gone with the Wind';

-------------------- Group by function Ans no 9  ---------------------
SELECT 
    fc.category_id, COUNT(r.rental_id) as count_of_rental
FROM
    rental r
        JOIN
    inventory i ON r.inventory_id = i.inventory_id
        JOIN
    film f ON f.film_id = i.film_id
        JOIN
    film_category fc ON f.film_id = fc.film_id
GROUP BY fc.category_id;
-------------------- Group by function Ans no 10  ---------------------
select * from language;
select * from film;
select Avg(rental_rate) ,name from film f join language l on f.language_id =l.language_id group by l.name;
-------------------- Advanced Group by and join function Ans no 1  ---------------------
SELECT 
    title, COUNT(title) totle
FROM
    film f
        JOIN
    inventory i ON f.film_id = i.film_id
        JOIN
    rental ON i.inventory_id = rental.inventory_id
GROUP BY f.title
ORDER BY totle DESC
LIMIT 5; 
-------------------- Advanced Group by and join function Ans no 2  ---------------------
SELECT 
    c.customer_id, c.first_name, c.last_name
FROM
    customer c
        JOIN
    rental r ON c.customer_id = r.customer_id
        JOIN
    inventory i ON r.inventory_id = i.inventory_id
        JOIN
    store s ON i.store_id = s.store_id
WHERE
    s.store_id IN (1 , 2)
GROUP BY c.customer_id , c.first_name , c.last_name
HAVING COUNT(DISTINCT s.store_id) = 2;