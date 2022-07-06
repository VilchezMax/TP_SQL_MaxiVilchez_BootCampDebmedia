USE tpSQL
CREATE PROCEDURE sp_declararForeignKeys
AS
BEGIN
	ALTER TABLE Locacion
		ADD CONSTRAINT FK_Locacion_barrioID 
			FOREIGN KEY Locacion(barrioID) REFERENCES Barrio(ID);
	
		ADD CONSTRAINT FK_Locacion_partidoID 
			FOREIGN KEY Locacion(partidoID) REFERENCES Partido(ID);
	
		ADD CONSTRAINT FK_Locacion_codPais
			FOREIGN KEY Locacion(codPais) REFERENCES Pais(codPais);
	
	
	ALTER TABLE Alojamiento
		ADD CONSTRAINT FK_Alojamiento_hostID
			FOREIGN KEY Alojamiento(hostID) REFERENCES Host(ID);
			
		ADD CONSTRAINT FK_Alojamiento_locacionID
			FOREIGN KEY Alojamiento(locacionID) REFERENCES Locacion(ID);
		
		ADD CONSTRAINT FK_Alojamiento_tipoHabID
			FOREIGN KEY Alojamiento(tipoHabID) REFERENCES Habitacion(ID);
	
		ADD CONSTRAINT FK_Alojamiento_politicaCancID
			FOREIGN KEY	Alojamiento(politicaCancID) REFERENCES PoliticaCancelacion(ID);
	
	
	
	ALTER TABLE Lugar
		ADD CONSTRAINT FK_Lugar_alojamientoID 
			FOREIGN KEY Lugar(alojamientoID) REFERENCES Alojamiento(ID);

	
	
	
END
