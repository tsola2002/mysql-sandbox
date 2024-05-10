
-- 
SELECT Name, Population FROM country
WHERE Continent='Oceania' AND Population > 1000000;

-- this will select countries that start with the word united
SELECT Name FROM country WHERE Name LIKE 'United %';

-- filtering using the OR keyword
SELECT * FROM city WHERE (District='New York' OR District='New Jersey')
AND Population>100000;

-- this commands gives us results of sample math functions
SELECT 1 + 2, 10 - 11, 1 / 3, POW(2, 3), ROUND(1/3, 1), CEILING(0.9);