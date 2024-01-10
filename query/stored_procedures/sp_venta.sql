CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_venta`(fecha DATE, maxitems INT,maxcantidad INT)
BEGIN
DECLARE vcliente VARCHAR(11);
DECLARE vproducto VARCHAR(10);
DECLARE vvendedor VARCHAR(5);
DECLARE vcantidad INT;
DECLARE vprecio FLOAT;
DECLARE vitems INT;
DECLARE vnfactura INT;
DECLARE vcontador INT DEFAULT 1;
DECLARE vnumitems INT;
SELECT MAX(NUMERO) + 1 INTO vnfactura FROM facturas;
SET vcliente = f_cliente_aleatorio();
SET vvendedor = f_vendedor_aleatorio();
INSERT INTO facturas (NUMERO, FECHA, DNI, MATRICULA, IMPUESTO) VALUES (vnfactura, fecha, vcliente, vvendedor, 0.16);
SET vitems = f_aleatorio(1, maxitems);
WHILE vcontador <= vitems
DO
SET vproducto = f_producto_aleatorio();
SELECT COUNT(*) INTO vnumitems FROM items
WHERE CODIGO = vproducto AND NUMERO = vnfactura;
IF vnumitems  = 0 THEN
	SET vcantidad = f_aleatorio(1, maxcantidad);
	SELECT PRECIO INTO vprecio FROM productos WHERE CODIGO = vproducto;
	INSERT INTO items(NUMERO, CODIGO, CANTIDAD, PRECIO) VALUES(vnfactura, vproducto, vcantidad, vprecio);
END IF;
SET vcontador = vcontador +1;
END WHILE;

END