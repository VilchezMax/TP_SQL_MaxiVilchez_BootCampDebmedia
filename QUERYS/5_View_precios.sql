USE tpSQL;

CREATE VIEW vw_precios
AS
SELECT 
	AVG(precio) AS promPrecios,
	MAX(precio) AS maxPrecio,
	MIN(precio) AS minPrecio,
	SUM(precio) AS sumaPrecios 
FROM Alojamiento  WHERE precio IS NOT NULL;


SELECT * FROM vw_precios;




