USE tpSQL
CREATE PROCEDURE sp_declararForeignKeys
AS
BEGIN
	ALTER TABLE Locacion
		ADD CONSTRAINT FK_Locacion_barrioID 
			FOREIGN KEY (barrioID) REFERENCES Barrio(barID);
	ALTER TABLE Locacion
		ADD CONSTRAINT FK_Locacion_partidoID 
			FOREIGN KEY (partidoID) REFERENCES Partido(parID);
	ALTER TABLE Locacion
		ADD CONSTRAINT FK_Locacion_codPais
			FOREIGN KEY (codPais) REFERENCES Pais(codigoPais);
	
	
	ALTER TABLE Alojamiento
		ADD CONSTRAINT FK_Alojamiento_hostID
			FOREIGN KEY (hostID) REFERENCES Host(hosID);
	ALTER TABLE Alojamiento
		ADD CONSTRAINT FK_Alojamiento_locacionID
			FOREIGN KEY (locacionID) REFERENCES Locacion(locID);
	ALTER TABLE Alojamiento
		ADD CONSTRAINT FK_Alojamiento_tipoHabID
			FOREIGN KEY (tipoHabID) REFERENCES Habitacion(habID);
	ALTER TABLE Alojamiento
		ADD CONSTRAINT FK_Alojamiento_politicaCancID
			FOREIGN KEY	(politicaCancID) REFERENCES PoliticaCancelacion(polcancID);
	
		
	ALTER TABLE Lugar
		ADD CONSTRAINT FK_Lugar_alojamientoID 
			FOREIGN KEY (alojamientoID) REFERENCES Alojamiento(ID);

END;

EXEC sp_declararForeignKeys;