-- this code will create a view
CREATE VIEW `customerLogDates` AS
SELECT first_name, last_name, email, create_date FROM customer;

CREATE VIEW `customershortlog` AS
SELECT first_name, last_name, email, create_date FROM customer LIMIT 10;

-- this code will list all the view in your database
SHOW FULL TABLES IN sakila WHERE Table_type LIKE 'VIEW';

-- this will select all information from customerlogdates view
SELECT * FROM customerlogdates;

-- this will check if a view is updatable
SELECT table_name, is_updatable FROM views
ORDER BY table_name;

-- this will update an existing view
CREATE OR REPLACE VIEW customerlogdates AS
SELECT first_name, last_name FROM customer;

-- this will delete a specified view
DROP VIEW customerlogdates;

-- this will delete more than one view
DROP VIEW customerdata, actor_info;

