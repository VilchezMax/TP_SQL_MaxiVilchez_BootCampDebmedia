CREATE DATABASE tpSQL;
USE tpSQL;


CREATE PROCEDURE sp_crearTablas
AS
BEGIN
	CREATE TABLE Alojamiento (
	  ID INT PRIMARY KEY NOT NULL, --Elegi este valor arbitrario porque es el mayor de los 50 registros a ingresar
	  hostID INT NOT NULL, --FK
	  locacionID INT, --FK
	  dispInmediata BIT,
	  politicaCancID INT, --FK
	  tipoHabID INT, --FK
	  anioConstruccion INT,
	  precio INT,
	  tarifaServicio INT,
	  minNoches INT,
	  disponibilidad365 INT,
	  reglas VARCHAR(300),
	  nReviews INT,
	  fechaUltimaReview DATE,
	  reviewsPorMes FLOAT,
	  promedioPuntaje INT
	  );

	CREATE TABLE Lugar (
	  alojamientoID INT NOT NULL, --FK
	  titulo VARCHAR(100)
	);
	
	
	CREATE TABLE Host (
	  hosID INT PRIMARY KEY NOT NULL,
	  hostIdentidadVerficada VARCHAR(10),
	  hostNombre VARCHAR(100),
	  cantAlojamientosHost INT
	);

	CREATE TABLE Habitacion (
	 habID INT PRIMARY KEY NOT NULL,
	 tipoHabitacion VARCHAR(20)
	);

	CREATE TABLE PoliticaCancelacion (
	  polcancID INT PRIMARY KEY NOT NULL,
	  politicaCancelacion VARCHAR(10)
	);

	CREATE TABLE Locacion (
	  locID INT PRIMARY KEY NOT NULL,
	  latitud INT,
	  longitud INT,
	  barrioId INT, --FK
	  partidoId INT, --FK
	  codPais VARCHAR(4) --FK
	);
	
	CREATE TABLE Barrio (
	  barID INT PRIMARY KEY NOT NULL,
	  barrio VARCHAR(40)
	);
	
	CREATE TABLE Partido (
	  parID INT PRIMARY KEY NOT NULL,
	  partido VARCHAR(40)
	);
	
	CREATE TABLE Pais (
	  codigoPais VARCHAR(4) PRIMARY KEY NOT NULL,
	  pais VARCHAR(30) 
	);

END ;

EXEC sp_crearTablas

INSERT INTO Alojamiento(id) VALUES()
