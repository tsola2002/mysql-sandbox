
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

SHOW CREATE USER johndoe@localhost;

SHOW GRANTS FOR johndoe@localhost;

SHOW GRANTS;

REVOKE SELECT ON city FROM 'johndoe'@'%';