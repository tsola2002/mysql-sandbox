
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

-- listing big cities in Mexico and showing the population number in millions, formatted to only show one digit after the decimal point
SELECT Name, ROUND(Population/1000000,1) AS 'Population (Million)'
FROM city
WHERE CountryCode='MEX' AND Population>1000000;

-- This returns all the cities that have New as the first three letters of their name:
SELECT Name FROM city WHERE LEFT(Name, 4) = 'New ';
SELECT Name FROM city WHERE RIGHT(Name, 4) = 'city';

-- This splits the email address on @ and returns the user and domain parts in different columns
SELECT email, SUBSTRING_INDEX(email, "@", 1),
SUBSTRING_INDEX(email, "@", -1),
store_id,
active
FROM customer
WHERE store_id = 1 AND active = 0;

-- using length function to view the length of a column name
SELECT LENGTH('first_name'), LENGTH('BBBBBB');
SELECT CHAR_LENGTH('username'), CHAR_LENGTH('last_name');

-- this will convert the characters to upper case
SELECT UPPER('first_name'), UPPER('last_name');

-- this will convert the characters to lower case
SELECT CONCAT('first_name', 'last_name');

-- this will display current time in different formats
SELECT CURRENT_TIME(5), CURRENT_DATE(), CURRENT_TIMESTAMP(5), NOW(5);

-- this adds an interval to a date
SELECT DATE_ADD('2010-01-01', INTERVAL 1 YEAR);
SELECT DATE_ADD('2010-01-01', INTERVAL 1 DAY);
SELECT DATE_ADD('2010-01-01', INTERVAL 1 WEEK);
SELECT DATE_ADD(CURRENT_DATE(), INTERVAL 4 MONTH);

-- this converts timestamp to unix timestamp and vice versa
SELECT UNIX_TIMESTAMP('2014-05-14 10:50:00'), FROM_UNIXTIME(1573846979);
SELECT UNIX_TIMESTAMP(CURRENT_TIMESTAMP()), FROM_UNIXTIME(1715680363);

SELECT title, rating, replacement_cost from film;

-- aggregation function to pick out sum of replacement_cost column based on the rating
SELECT rating, SUM(replacement_cost) from film GROUP BY rating;
-- aggregation function to pick out maximum of replacement_cost based on the rating
SELECT rating, MAX(replacement_cost) from film GROUP BY rating;
-- aggregation function to pick out number of occurrences in replacement_cost column based on the rating
SELECT rating, COUNT(replacement_cost) from film GROUP BY rating;
-- aggregation function to calculate the average of the replacement_cost column based on the rating
SELECT rating, AVG(replacement_cost) from film GROUP BY rating;
-- aggregation function to join all values from the replacement_cost column based on the rating
SELECT rating, GROUP_CONCAT(replacement_cost) from film GROUP BY rating;

--aggregation function to filter all values based on a certain condition replacement_cost column based on the rating
SELECT rating, SUM(replacement_cost) from film GROUP BY rating HAVING SUM(replacement_cost) > 4000;

-- this statement will sort the table by the region in alphabetical order
SELECT name, region FROM country ORDER BY region ASC;

-- this statement will sort the table by the region in DESCENDING order
SELECT name, region FROM country ORDER BY region DESC;

-- this statement will display unique value rows
SELECT DISTINCT region FROM country;