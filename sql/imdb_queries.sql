-- Q1
SELECT m.name
FROM movies m
WHERE m.year = 1995;

-- Q2
SELECT COUNT(r.actor_id)
FROM roles r
WHERE r.movie_id = 194874  -- Id of film Lost in Translation, It is more efficient to find by ID.

-- Q3
SELECT a.first_name 'First Name', a.last_name 'Last Name'
FROM roles r
JOIN actors a ON a.id = r.actor_id
WHERE r.movie_id = 194874; -- Id of film Lost in Translation, It is more efficient to find by ID.

-- Q4
SELECT d.first_name `Director's First Name`, d.last_name `Director's Last Name`
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON d.id = md.director_id
WHERE m.name = 'Fight Club';

--Q5
SELECT COUNT(*)
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON d.id = md.director_id
WHERE d.first_name = 'Clint' AND d.last_name = 'Eastwood';

--Q6
SELECT m.name `Clint Eastwood's movies`
FROM movies m
JOIN movies_directors md ON m.id = md.movie_id
JOIN directors d ON d.id = md.director_id
WHERE d.first_name = 'Clint' AND d.last_name = 'Eastwood';

-- Q7
SELECT DISTINCT d.first_name,  d.last_name
FROM directors d
JOIN directors_genres dg ON dg.genre = 'Horror'

-- Q8
