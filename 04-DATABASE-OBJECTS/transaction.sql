CREATE DATABASE test;
USE test;
CREATE TABLE animals (id int primary key, name varchar(255));
DESCRIBE animals;
TRUNCATE TABLE animals;
-- this will start a transaction
BEGIN;
INSERT INTO animals VALUES(1, 'dolphin');
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;