
-- get the count(deathdate) and multiply by 100.0
-- then divide by count(*)
SELECT COUNT(DEATHDATE)*100.0/COUNT(*)
AS PERCENTAGE_DEAD
FROM PEOPLE;


SELECT MAX(release_year)-MIN(release_year)
AS DIFFERENCE
FROM FILMS;


SELECT (MAX(release_year)-MIN(release_year))/10.0
AS NUMBER_OF_DECADES
FROM FILMS;


SELECT NAME
FROM PEOPLE
ORDER BY NAME;


SELECT NAME
FROM PEOPLE
ORDER BY BIRTHDATE;


SELECT BIRTHDATE, NAME
FROM PEOPLE
ORDER BY BIRTHDATE;


SELECT TITLE
FROM FILMS
WHERE RELEASE_YEAR=2000 OR RELEASE_YEAR=2012 
ORDER BY RELEASE_YEAR;


SELECT *
FROM FILMS
WHERE RELEASE_YEAR <>2015
ORDER BY DURATION;


SELECT TITLE, GROSS
FROM FILMS
WHERE TITLE LIKE 'M%'
ORDER BY TITLE;


SELECT FILM_ID, IMDB_SCORE
FROM REVIEWS
ORDER BY IMDB_SCORE DESC;


SELECT TITLE
FROM FILMS
ORDER BY TITLE DESC;


SELECT TITLE, DURATION
FROM FILMS
ORDER BY DURATION DESC;


SELECT BIRTHDATE, NAME
FROM PEOPLE
ORDER BY BIRTHDATE, NAME;


SELECT RELEASE_YEAR, DURATION, TITLE
FROM FILMS
ORDER BY RELEASE_YEAR, DURATION;


SELECT CERTIFICATION, RELEASE_YEAR, TITLE
FROM FILMS
ORDER BY CERTIFICATION, RELEASE_YEAR;


SELECT BIRTHDATE, NAME
FROM PEOPLE
ORDER BY NAME, BIRTHDATE;


SELECT RELEASE_YEAR, COUNT(*)
FROM FILMS
GROUP BY RELEASE_YEAR;


SELECT RELEASE_YEAR, AVG(DURATION)
FROM FILMS
GROUP BY RELEASE_YEAR;


SELECT RELEASE_YEAR, MAX(BUDGET)
FROM FILMS
GROUP BY RELEASE_YEAR;


SELECT IMDB_SCORE, COUNT(*)
FROM REVIEWS
GROUP BY IMDB_SCORE;


SELECT RELEASE_YEAR, MIN(GROSS)
FROM FILMS
GROUP BY RELEASE_YEAR;


SELECT LANGUAGE,SUM(GROSS)
FROM FILMS
GROUP BY LANGUAGE;


SELECT COUNTRY, SUM(BUDGET)
FROM FILMS
GROUP BY COUNTRY;


SELECT RELEASE_YEAR,COUNTRY,MAX(BUDGET)
FROM FILMS
GROUP BY RELEASE_YEAR, COUNTRY
ORDER BY RELEASE_YEAR, COUNTRY;


SELECT COUNTRY, RELEASE_YEAR, MIN(GROSS)
FROM FILMS
GROUP BY RELEASE_YEAR,COUNTRY
ORDER BY COUNTRY, RELEASE_YEAR;


SELECT release_year
FROM films
GROUP BY release_year
HAVING COUNT(title) > 10;


SELECT RELEASE_YEAR, BUDGET, GROSS
FROM FILMS;


SELECT RELEASE_YEAR,BUDGET,GROSS
FROM FILMS
WHERE RELEASE_YEAR>1990;


SELECT RELEASE_YEAR
FROM FILMS
WHERE RELEASE_YEAR>1990
GROUP BY RELEASE_YEAR;


SELECT RELEASE_YEAR,
AVG(BUDGET) AS AVG_BUDGET,
AVG(GROSS) AS AVG_GROSS
FROM FILMS
WHERE RELEASE_YEAR>1990
GROUP BY RELEASE_YEAR;


SELECT RELEASE_YEAR,
AVG(BUDGET) AS AVG_BUDGET,
AVG(GROSS) AS AVG_GROSS
FROM FILMS
WHERE RELEASE_YEAR>1990
GROUP BY RELEASE_YEAR
HAVING (AVG(BUDGET))>60000000;


SELECT RELEASE_YEAR,
AVG(BUDGET) AS AVG_BUDGET,
AVG(GROSS) AS AVG_GROSS
FROM FILMS
WHERE RELEASE_YEAR>1990
GROUP BY RELEASE_YEAR
HAVING (AVG(BUDGET))>60000000
ORDER BY (AVG(GROSS)) DESC;


SELECT COUNTRY,
AVG(BUDGET) AS AVG_BUDGET,
AVG(GROSS) AS AVG_GROSS
FROM FILMS
GROUP BY COUNTRY
HAVING COUNT(TITLE)>10
ORDER BY COUNTRY
LIMIT 5;


SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';

