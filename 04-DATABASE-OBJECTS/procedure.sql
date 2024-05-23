CREATE PROCEDURE CityCount(ccode CHAR(3))
    SELECT co.Name, COUNT(*) Cities
    FROM City ci JOIN Country co ON Code = CountryCode
    WHERE Code = ccode;

CALL CityCount('USA');