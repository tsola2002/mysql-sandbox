-- this will login to your mysql session
mysql -u root -p autoclub

-- this command will show -- Get a list of databases
SHOW DATABASES;

-- this command will create a database
CREATE DATABASE autoclub;

-- this command will move to the database 
USE autoclub;

-- this command will show table within a database
SHOW TABLES;

-- this command will describe a TABLE
DESC people;

-- this command will create a table
CREATE TABLE autoclub.tbl_members (
	idMembers INT NOT NULL AUTO_INCREMENT,
	FirstName VARCHAR(20) NOT NULL,
	Active BIT(1) NULL DEFAULT 1,
	WhenAdded TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	LastModified TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (idMembers)
);

CREATE TABLE autoclub.people (
	id INT UNSIGNED NOT NULL,
	name VARCHAR(20) NOT NULL,
	city VARCHAR(15) NOT NULL,
	bdate DATE NOT NULL
);

-- DESCRIBE THE TABLE STRUCTURE
DESC members

-- single line insert
INSERT INTO people VALUES (1, 'AI', 'New York', '1982-10-08');

--multiline INSERT
INSERT INTO people VALUES (2, 'Adaobi', 'Lagos', '1983-1-25'),
(3, 'Adeleke', 'Lagos', '1983-1-25'),
(4, 'Obinna', 'Abuja', '2001-1-15'),
(5, 'Udoka', 'Warri', '2005-1-18');

-- INSERTING DERIVED VALUES
INSERT INTO people VALUES ( + 4, CONCAT('B','y','ron'), CONCAT('San', IF(MOD(DAY(CURDATE()), 3), 'Jose', 'Francisco')), CURDATE() - INTERVAL 25 YEAR);

-- THIS WILL SELECT ALL RECORDS FROM A TABLES
SELECT * FROM people;

-- THIS WILL SELECT ONE PARTICULAR ROW
SELECT * FROM people WHERE id = 4;
SELECT * FROM people WHERE name = 'udoka';

-- THIS WILL SELECT 2 COLUMNS FROM OUR TABLE
SELECT name, city FROM people;


-- UPDATING A ROW ON A TABLE
UPDATE people
SET
	city = 'Lekki';
WHERE 
	id = 4;

-- DELETING ONE RECORD FROM A TABLE
DELETE FROM people WHERE id = 2;

-- DELETING ALL RECORDS FROM A TABLE
TRUNCATE people;
