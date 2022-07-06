-- 5) Cree una vista con el precio promedio, máximo, mínimo y total.
USE tpSQL

CREATE VIEW vw_precios2
AS
	SELECT 
	 AVG(precio) AS promPrecios,
	 MAX(precio) AS maxPrecio,
	 MIN(precio) AS minPrecio,
	 SUM(precio) AS sumaPrecios 
	 FROM Alojamiento  WHERE precio IS NOT NULL;

