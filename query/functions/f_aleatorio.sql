CREATE DEFINER=`root`@`localhost` FUNCTION `f_aleatorio`(min INT, max INT) RETURNS int
BEGIN
DECLARE vresultado INT;
SELECT FLOOR((RAND() * (max - min + 1)) + min) INTO vresultado;
RETURN vresultado;
END