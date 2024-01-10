CREATE DEFINER=`root`@`localhost` FUNCTION `f_cliente_aleatorio`() RETURNS varchar(11) CHARSET utf8mb4
BEGIN
DECLARE vresultado VARCHAR(11);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM clientes;
SET valeatorio = f_aleatorio(1, vmax);
SET valeatorio = valeatorio-1;
SELECT DNI INTO vresultado FROM clientes LIMIT valeatorio, 1;
RETURN vresultado;
END