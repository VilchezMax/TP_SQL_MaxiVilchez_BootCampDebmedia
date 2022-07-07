CREATE DATABASE tpSQL;
USE tpSQL;


CREATE PROCEDURE sp_crearTablas
AS
BEGIN
	CREATE TABLE Alojamiento (
	  ID INT PRIMARY KEY NOT NULL IDENTITY, 
	  hostID BIGINT, --FK
	  locacionID INT, --FK
	  dispInmediata BIT,
	  politicaCancID INT, --FK
	  tipoHabID INT, --FK
	  anioConstruccion INT,
	  precio INT,
	  tarifaServicio INT,
	  minNoches INT,
	  disponibilidad365 INT,
	  reglas VARCHAR(4000),
	  nReviews INT,
	  fechaUltimaReview DATE,
	  reviewsPorMes FLOAT,
	  promedioPuntaje INT
	  );

	CREATE TABLE Lugar (
	  alojamientoID INT NOT NULL IDENTITY, --FK
	  titulo VARCHAR(100)
	);
	
	
	CREATE TABLE Host (
	  hosID BIGINT PRIMARY KEY NOT NULL IDENTITY,
	  hostIdentidadVerficada VARCHAR(12),
	  hostNombre VARCHAR(100),
	  cantAlojamientosHost INT
	);

	CREATE TABLE Habitacion (
	 habID INT PRIMARY KEY NOT NULL IDENTITY,
	 tipoHabitacion VARCHAR(20)
	);

	CREATE TABLE PoliticaCancelacion (
	  polCancID INT PRIMARY KEY NOT NULL IDENTITY,
	  politicaCancelacion VARCHAR(10)
	);

	CREATE TABLE Locacion (
	  locID INT PRIMARY KEY NOT NULL IDENTITY,
	  latitud INT,
	  longitud INT,
	  barrioID INT, --FK
	  partidoID INT, --FK
	  codPais VARCHAR(4) --FK
	);
	
	CREATE TABLE Barrio (
	  barID INT PRIMARY KEY NOT NULL IDENTITY,
	  barrio VARCHAR(40)
	);
	
	CREATE TABLE Partido (
	  parID INT PRIMARY KEY NOT NULL IDENTITY,
	  partido VARCHAR(40)
	);
	
	CREATE TABLE Pais (
	  codigoPais VARCHAR(4) PRIMARY KEY NOT NULL,
	  pais VARCHAR(30) 
	);

END ;

EXEC sp_crearTablas;
