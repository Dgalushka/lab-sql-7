USE SAKILA;

-- 1. In the table actor, which are the actors whose last names are not repeated?
SELECT LAST_NAME FROM ACTOR
GROUP BY LAST_NAME
HAVING COUNT(LAST_NAME) = 1
ORDER BY LAST_NAME ASC;

-- 2. Which last names appear more than once? 
SELECT LAST_NAME  FROM ACTOR
GROUP BY LAST_NAME
HAVING COUNT(LAST_NAME) != 1
ORDER BY LAST_NAME ASC;

-- 3. Using the rental table, find out how many rentals were processed by each employee.
SELECT * FROM RENTAL;
SELECT STAFF_ID, COUNT(DISTINCT(RENTAL_ID)) AS RENTALS FROM RENTAL
GROUP BY STAFF_ID;

-- 4. Using the film table, find out how many films were released each year.
SELECT RELEASE_YEAR, COUNT(DISTINCT TITLE) AS FILMS_RELEASED FROM FILM
GROUP BY RELEASE_YEAR;

-- 5. Using the film table, find out for each rating how many films were there.
SELECT RATING, COUNT(DISTINCT TITLE) AS FILMS_PER_RATING FROM FILM
GROUP BY RATING;

-- 6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT RATING, COUNT(DISTINCT TITLE) AS FILMS_PER_RATING, ROUND(AVG(LENGTH), 2) AS AVG_LENGTH FROM film
GROUP BY RATING;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT RATING, COUNT(DISTINCT TITLE) AS FILMS_PER_RATING, ROUND(AVG(LENGTH), 2) AS AVG_LENGTH FROM film
GROUP BY RATING
HAVING AVG_LENGTH > 120;

