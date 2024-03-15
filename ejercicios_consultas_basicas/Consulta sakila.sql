USE sakila;

-- Ejercicio 1 --
SELECT * FROM film;

-- Ejercicio 2 --
SELECT title , length FROM film;

-- Ejercicio 3 --
SELECT DISTINCT rental_rate FROM film;

-- Ejercicio 4 --
SELECT DISTINCT rental_rate as precios FROM film;

-- Ejercicio 5 --
SELECT * FROM customer WHERE store_id = 2;

-- Ejercicio 6 --
SELECT * FROM actor WHERE first_name <'D' ORDER BY first_name DESC;

-- Ejercicio 7 --
SELECT first_name, last_name FROM actor WHERE first_name='Albert' OR last_name='Allen';

-- Ejercicio 8 -- 
SELECT first_name, last_name FROM actor WHERE NOT (first_name='Albert' AND last_name='Allen');

-- Ejercicio 9 --
SELECT first_name, last_name FROM actor WHERE first_name NOT LIKE 'Albert' AND last_name NOT LIKE 'Allen';

-- Ejercicio 10 --
SELECT first_name, last_name, store_id FROM customer WHERE store_id=2 AND (last_name LIKE '%SEN' OR last_name LIKE '%SON');

-- Ejercicio 11 --
SELECT first_name, last_name, store_id FROM customer WHERE store_id=2 AND last_name LIKE '%SEN' OR last_name LIKE '%SON';

-- Ejercicio 12 -- 
SELECT * FROM actor WHERE (actor_id >=10 AND actor_id<=20) AND last_name LIKE '_A%';

-- Ejercicio 13 --
SELECT * FROM actor WHERE (actor_id >10 AND actor_id<20) AND last_name LIKE '_A%';

-- Ejercicio 14 --
SELECT first_name, last_name FROM actor WHERE last_name='AKROYD' OR last_name='ALLEN' OR last_name='BERRY';

-- Ejercicio 15 --
SELECT first_name, last_name FROM actor WHERE last_name LIKE 'AKROYD' OR last_name LIKE 'ALLEN' OR last_name LIKE 'BERRY';

-- Ejercicio 16 --
SELECT first_name FROM actor UNION SELECT first_name from customer;

-- Ejercicio 17 --
SELECT first_name FROM actor WHERE first_name LIKE '%D%' UNION ALL SELECT first_name from customer WHERE first_name LIKE 'A%' OR first_name LIKE 'B%') ORDER BY first_name DESC;