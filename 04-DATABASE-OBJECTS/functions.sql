-- this will create a function to round a number
DROP FUNCTION IF EXISTS rndb;
CREATE FUNCTION rndb (original FLOAT, basis FLOAT)
RETURNS FLOAT
RETURN TRUNCATE(original / basis + 0.5, 0) * basis;

-- this will display all functions in a specified database
SHOW FUNCTION STATUS WHERE Db = 'sakila';

SELECT TRUNCATE(27.88/0.25+ 0.5, 0) * 0.25;

SELECT rndb(27.88, 0.25);

--  retrieve population for cities in switzerland and round them to the nearest 500
SELECT Name, Population FROM city WHERE CountryCode = 'CHE';

SELECT Name, rndb(Population, 500) FROM city WHERE CountryCode = 'CHE';


