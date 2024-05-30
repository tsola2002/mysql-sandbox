
-- this will log you into to your mysql account
mysql -h localhost -u root -p autoclub

-- this you login with a different user account
mysql -h localhost -u johndoe -p autoclub

-- this will create a new user account in mysql
CREATE USER 'johndoe'@'%' IDENTIFIED BY 'passcode';