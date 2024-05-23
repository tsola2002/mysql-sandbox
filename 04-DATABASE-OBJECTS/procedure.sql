CREATE PROCEDURE CityCount(ccode CHAR(3))
    SELECT co.Name, COUNT(*) Cities
    FROM City ci JOIN Country co ON Code = CountryCode
    WHERE Code = ccode;

CALL CityCount('USA');

-- this will creat a stored procedure
DROP procedure IF EXISTS `sp_ListMembers`;
DELIMITER $$
CREATE PROCEDURE `sp_ListMembers` ()
BEGIN
SELECT * FROM make;
END$$
DELIMITER ;

-- this will run a stored procedure
CALL sp_ListMembers;