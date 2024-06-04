
-- this will log you into to your mysql account
mysql -h localhost -u root -p autoclub

-- this you login with a different user account
mysql -h localhost -u johndoe -p autoclub

-- this will create a new user account in mysql
CREATE USER 'johndoe'@'%' IDENTIFIED BY 'johndoe';
CREATE USER 'janedoe'@'%' IDENTIFIED BY 'janedoe';

-- this will change the password for johndoe
ALTER USER 'johndoe'@'%' IDENTIFIED BY 'johndoe';

-- this you login with a new password that you created
mysql -h localhost -u johndoe -p autoclub

-- this will delete a user account
DROP USER johndoe;

-- this will grant select priviledges to john doe's account
GRANT SELECT ON world.* TO 'johndoe'@'%';

-- this will grant access to only one table with access to only 2 columns
GRANT SELECT (Code, Name) ON `world`.`country` TO 'johndoe'@'%';
GRANT SELECT (Code, Name) ON `world`.`country` TO 'janedoe'@'%';

-- show user details for the user johndoe
SHOW CREATE USER johndoe;

-- show priviledges for a particular user
SHOW GRANTS FOR johndoe


SHOW GRANTS;
-- this will remove a user permission
REVOKE SELECT ON city FROM 'johndoe'@'%';

-- this will switch to mysql database and list all users in mysql
USE mysql
SELECT user, host, password FROM user;

CREATE USER joe;
-- this shows all users that have privileges attached to them
SELECT GRANTEE FROM information_schema.USER_PRIVILEGES GROUP BY GRANTEE;

SELECT GRANTEE FROM information_schema.COLUMN_PRIVILEGES GROUP BY GRANTEE;

SELECT GRANTEE FROM information_schema.SCHEMA_PRIVILEGES GROUP BY GRANTEE;

SELECT GRANTEE FROM information_schema.TABLE_PRIVILEGES GROUP BY GRANTEE;

-- this will create neccesary databases
CREATE SCHEMA IF NOT EXISTS employees;
CREATE SCHEMA IF NOT EXISTS ebike;

-- this will delete users if they exist already
DROP USER IF EXISTS 'patrick'@'%';
DROP USER IF EXISTS 'mike'@'%';
DROP USER IF EXISTS 'webserver'@'%';


--enable_warnings
CREATE USER 'patrick'@'%' IDENTIFIED BY 'patrick';
CREATE USER 'mike'@'%' IDENTIFIED BY 'mike';
CREATE USER 'webserver'@'%' IDENTIFIED BY 'webserver' WITH MAX_USER_CONNECTIONS 300;
GRANT ALL ON employees.* TO 'patrick'@'%';
GRANT ALL ON ebike.* TO 'patrick'@'%';
GRANT ALL ON ebike.* TO 'mike'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON ebike.* TO 'webserver'@'%';

-- this will lock a mysql account
ALTER USER 'janedoe'@'%' ACCOUNT LOCK;

-- this will unlock an sql account
ALTER USER 'janedoe'@'%' ACCOUNT UNLOCK;



CREATE DATABASE mobileapp;

CREATE USER 'sarah'@'%' IDENTIFIED BY 'sarah';
GRANT ALL ON ebike.* TO 'sarah'@'%';
GRANT ALL ON mobileapp.* TO 'sarah'@'%';
GRANT ALL ON mobileapp.* TO 'mike'@'%';
GRANT ALL ON mobileapp.* TO 'patrick'@'%';
GRANT ALL ON mobileapp.* TO 'webserver'@'%';

REVOKE ALL ON ebike.* FROM 'mike'@'%';
ALTER USER 'patrick'@'%' IDENTIFIED BY 'patrick2';

SHOW GRANTS FOR 'webserver'@'%';

-- this will create a role
CREATE ROLE `webdeveloper`;

GRANT SELECT ON mysql.user TO 'webdeveloper';

-- this will assign johndoe to the web developer role
GRANT 'webdeveloper' TO 'johndoe'@'%';
-- this will set your current logged in user to the role
SET ROLE 'webdeveloper';

-- this will display the cuurent role and current user
SELECT CURRENT_ROLE(), CURRENT_USER();
