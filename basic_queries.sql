-- View all records
SELECT * FROM cities;

-- Cities with population greater than 1 million
SELECT name, population
FROM cities
WHERE population > 1000000;

-- Sort by population
SELECT *
FROM cities
ORDER BY population DESC;

-- Count cities by state
SELECT state, COUNT(*)
FROM cities
GROUP BY state;
