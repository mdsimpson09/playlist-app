Make sure you download the starter code and run the following:

```sh
  psql < movies.sql
  psql movies_db
```

In markdown, you can place a code block inside of three backticks (```) followed by the syntax highlighting you want, for example

\```sql

SELECT \* FROM users;

\```

Using the `movies_db` database, write the correct SQL queries for each of these tasks:

1.  The title of every movie.
    \```SELECT * FROM movies;
2.  All information on the G-rated movies.
    \```select * from movies where rating == 'g';
3.  The title and release year of every movie, ordered with the
    oldest movie first.
    \```select distinct title, release_year from movies order by release_year desc;
4.  All information on the 5 longest movies.
    select * from movies where runtime=(select max(runtime) from movie limit 5);

5.  A query that returns the columns of `rating` and `total`, tabulating the
    total number of G, PG, PG-13, and R-rated movies.

SELECT rating, COUNT(*) AS total FROM movies GROUP BY rating;

6.  A table with columns of `release_year` and `average_runtime`,
    tabulating the average runtime by year for every movie in the database. The data should be in reverse chronological order (i.e. the most recent year should be first).

A table with columns of release_year and average_runtime, tabulating the average runtime by year for every movie in the database. The data should be in reverse chronological order (i.e., the most recent year should be first).

SELECT release_year, AVG(runtime) AS average_runtime
FROM movies
GROUP BY release_year
ORDER BY release_year DESC;

7.  The movie title and studio name for every movie in the
    database.

SELECT movies.title, studios.name AS studio_name
FROM movies
JOIN studios ON movies.studio_id = studios.id;

8.  The star first name, star last name, and movie title for every
    matching movie and star pair in the database.

SELECT stars.first_name, stars.last_name, movies.title
FROM stars
JOIN roles ON stars.id = roles.star_id
JOIN movies ON roles.movie_id = movies.id;


9.  The first and last names of every star who has been in a G-rated movie. The first and last name should appear only once for each star, even if they are in several G-rated movies. *IMPORTANT NOTE*: it's possible that there can be two *different* actors with the same name, so make sure your solution accounts for that.

SELECT DISTINCT stars.first_name, stars.last_name
FROM stars
JOIN roles ON stars.id = roles.star_id
JOIN movies ON roles.movie_id = movies.id
WHERE movies.rating = 'G';


10. The first and last names of every star along with the number
    of movies they have been in, in descending order by the number of movies. (Similar to #9, make sure
    that two different actors with the same name are considered separately).

SELECT stars.first_name, stars.last_name, COUNT(roles.star_id) AS movie_count
FROM stars
LEFT JOIN roles ON stars.id = roles.star_id
GROUP BY stars.first_name, stars.last_name
ORDER BY movie_count DESC;


### The rest of these are bonuses

11. The title of every movie along with the number of stars in
    that movie, in descending order by the number of stars.

SELECT movies.title, COUNT(roles.star_id) AS star_count
FROM movies
LEFT JOIN roles ON movies.id = roles.movie_id
GROUP BY movies.title
ORDER BY star_count DESC;

12. The first name, last name, and average runtime of the five
    stars whose movies have the longest average.

SELECT stars.first_name, stars.last_name, AVG(movies.runtime) AS average_runtime
FROM stars
JOIN roles ON stars.id = roles.star_id
JOIN movies ON roles.movie_id = movies.id
GROUP BY stars.first_name, stars.last_name
ORDER BY average_runtime DESC
LIMIT 5;

13. The first name, last name, and average runtime of the five
    stars whose movies have the longest average, among stars who have more than one movie in the database.

SELECT stars.first_name, stars.last_name, AVG(movies.runtime) AS average_runtime
FROM stars
JOIN roles ON stars.id = roles.star_id
JOIN movies ON roles.movie_id = movies.id
WHERE stars.id IN (
    SELECT star_id
    FROM roles
    GROUP BY star_id
    HAVING COUNT(movie_id) > 1
)
GROUP BY stars.first_name, stars.last_name
ORDER BY average_runtime DESC
LIMIT 5;

14. The titles of all movies that don't feature any stars in our
    database.
SELECT title
FROM movies
WHERE id NOT IN (
    SELECT DISTINCT movie_id
    FROM roles
);

15. The first and last names of all stars that don't appear in any movies in our database.
SELECT first_name, last_name
FROM stars
WHERE id NOT IN (
    SELECT DISTINCT star_id
    FROM roles
);

16. The first names, last names, and titles corresponding to every
    role in the database, along with every movie title that doesn't have a star, and the first and last names of every star not in a movie.
SELECT stars.first_name, stars.last_name, movies.title AS movie_title
FROM stars
FULL JOIN roles ON stars.id = roles.star_id
FULL JOIN movies ON roles.movie_id = movies.id;