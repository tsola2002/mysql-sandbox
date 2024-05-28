CREATE PROCEDURE CityCount(ccode CHAR(3))
    SELECT co.Name, COUNT(*) Cities
    FROM City ci JOIN Country co ON Code = CountryCode
    WHERE Code = ccode;

CALL CityCount('USA');

-- this will create a stored procedure
DROP PROCEDURE IF EXISTS `sp_ListMembers`;
DELIMITER $$
CREATE PROCEDURE `sp_ListMembers` ()
BEGIN
SELECT * FROM make;
END$$
DELIMITER;

-- this will run a stored procedure
CALL sp_ListMembers;

-- this will list all stored procedures in a database
SHOW PROCEDURE STATUS WHERE Db = 'autoclub';


DROP procedure IF EXISTS `sp_ListTableData`;
DELIMITER $$
CREATE PROCEDURE `sp_ListTableData` (IN TableName VARCHAR(100))
BEGIN
SET @sql =CONCAT('SELECT * FROM ', TableName);
PREPARE statement FROM @sql;
EXECUTE statement;
DEALLOCATE PREPARE statement;
END$$
DELIMITER;

-- this will run a stored procedure
CALL sp_ListTableData("make");