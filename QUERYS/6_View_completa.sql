USE tpSQL;

/* VIEW PREVIA DE TABLA PUENTE PARA LLAMAR EN VIEW COMPLETA*/
--
CREATE VIEW vw_Locacion
AS
SELECT
	locID AS locacionID ,
	partido ,
	barrio , 
	latitud ,
	longitud , 
	pais, 
	codPais 
	FROM Locacion loc
		INNER JOIN Barrio AS br ON (loc.barrioId = br.barID)
		INNER JOIN Partido AS pd ON (loc.partidoId = pd.parID) 
		INNER JOIN Pais AS ps  ON (loc.codPais = ps.codigoPais);
--
	
	
SELECT * FROM vw_Locacion;

/*VIEW COMPLETA DE LA CONSIGNA 6*/
--
CREATE VIEW vw_completa
AS
SELECT
	ID AS alojamientoID,
	lr.titulo AS titulo,
	ht.hosID AS hostID,
	ht.hostIdentidadVerficada AS hostIDVerificada, 
	ht.hostNombre AS hostNombre,
	vwloc.partido AS partido,
	vwloc.barrio AS barrio,
	vwloc.latitud AS latitud,
	vwloc.longitud AS longitud,
	vwloc.pais AS pais,
	vwloc.codPais AS codigoPais,
	CASE
    	WHEN dispInmediata = 1 THEN 'TRUE'
    	WHEN dispInmediata = 0 THEN 'FALSE'
	END
	AS dispInmediata,
	pc.politicaCancelacion,
	hb.tipoHabitacion,
	anioConstruccion,
	precio,
	tarifaServicio,
	minNoches,
	nReviews AS numeroReviews,
	fechaUltimaReview,
	reviewsPorMes,
	promedioPuntaje,
	ht.cantAlojamientosHost,
	disponibilidad365,
	reglas
	FROM Alojamiento a 
		INNER JOIN Host AS ht ON (a.hostID = ht.hosID)
		INNER JOIN Lugar AS lr ON (a.ID = lr.alojamientoID)
		INNER JOIN vw_Locacion AS vwloc ON (a.locacionID = vwloc.locacionID)
		INNER JOIN PoliticaCancelacion AS pc ON (a.politicaCancID = polCancID)
		INNER JOIN Habitacion AS hb ON (a.tipoHabID = hb.habID);
--

SELECT * FROM vw_completa
