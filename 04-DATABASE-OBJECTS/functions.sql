
DROP FUNCTION IF EXISTS rndb;
CREATE FUNCTION rndb (original FLOAT, BASIS FLOAT)
RETURNS FLOAT
RETURN TRUNCATE(original/basis+.5, 0) * basis;

-- SELECT TRUNCATE(27.88/.25+.5, 0)*.25;

SELECT rndb(27.87, .25);

--  retrieve population for cities in switzerland and round them to the nearest 500
SELECT Name, Population FROM CITY WHERE CountryCode = 'CHE';

SELECT Name, rndb(Population, 5000) FROM CITY WHERE CountryCode = 'CHE';


