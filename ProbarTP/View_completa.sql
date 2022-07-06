--6) Cree una vista con todos los datos juntos como se muestra en el csv original. (JOINS)
USE tpSQL

/* VIEW PREVIA DE TABLA PUENTE PARA LLAMAR EN VIEW COMPLETA*/
CREATE VIEW v_Locacion
AS
SELECT
	partido , --Partido
	barrio , --Barrio
	latitud , --Locacion
	longitud , --Locacion
	pais, --Pais
	codPais  --Locacion
FROM Locacion loc
INNER JOIN Barrio AS br ON (loc.barrioId = br.barID)
INNER JOIN Partido AS pd ON ( loc.partidoId = pd.parID) 
INNER JOIN Pais AS ps  ON ( loc.codPais = ps.codigoPais)

/*VIEW COMPLETA DE LA CONSIGNA 6*/
CREATE VIEW vw_dbCompleta
AS
SELECT 
	ID,
	titulo, --Lugar
	hostID,
	hostIdentidadVerficada , --HOST
	hostNombre, --HOST
	--locacionID 
	--v_Locacion, -- VIEW. HAY QUE VER COMO ARTICULAR CON EL LocacionID DESEADO
	partido , --Partido
	barrio , --Barrio
	latitud , --Locacion
	longitud , --Locacion
	pais, --Pais
	codPais  --Locacion
	-- FIN DE VIEW
	dispInmediata,
	politicaCancelacion , --PoliticaCancelacion 
	tipoHabitacion, --Habitacion
	anioConstruccion,
	precio,
	tarifaServicio,
	minNoches,
	nReviews,
	fechaUltimaReview,
	reviewsPorMes,
	promedioPuntaje,
	cantAlojamientosHost , --HOST
	disponibilidad365,
	reglas
	
FROM Alojamiento a
INNER JOIN Lugar lr ON (a.ID = lr.alojamientoID)
INNER JOIN Host ht ON (a.hostID = ht.hosID)
INNER JOIN PoliticaCancelacion pc ON (a.politicaCancID = pc.ID)
INNER JOIN Habitacion hn ON (a.tipoHabID = hn.ID)
INNER JOIN v_l ON (a.locacionID = v_l.ID)
