-- this code will join city table to country table
SELECT * FROM city JOIN country;

SELECT * FROM city JOIN country ON city. CountryCode=country.Code;

-- this code will join city and country table based on a similar reference
SELECT ct.id, ct.name, cy.Code AS CountryCode, cy.name AS CountryName
FROM city ct 
JOIN country cy 
ON ct.CountryCode = cy.Code;

INSERT INTO city VALUES(2460, 'Skopje', 'MKD');

INSERT INTO country VALUES('HUN', 'Hungary');

-- all the records from the first table are shown even if there is no matching record in the second table. In that case, the columns from that table will have NULL as a value.
SELECT ci.Name, co.Code AS CountryCode, co.Name
AS CountryName
FROM city ci LEFT JOIN country co ON ci.CountryCode=co.Code;


SELECT ci.Name, co.Code AS CountryCode, co.Name
AS CountryName
FROM city ci RIGHT JOIN country co ON ci.CountryCode=co.Code;

-- this subquery allows us to use the output of a query directly in another query.
SELECT Name FROM city WHERE CountryCode=(
    SELECT Code FROM country WHERE Name='Romania'
);

-- this code uses a subquery which depends on the main query(dependent subquery)
SELECT
    Name,
    CountryCode,
    (SELECT Name FROM country WHERE Code=city.CountryCode) AS CountryName
FROM city;

