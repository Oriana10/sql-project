CREATE DATABASE TUCONCIERTO;

USE TUCONCIERTO;

CREATE TABLE Cliente (
    DNI VARCHAR(50) NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE Estadio (
    estadioID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Seccion (
    seccionID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    capacidad_maxima INT NOT NULL,
    precio FLOAT NOT NULL,
    ofrece_servicio BIT NOT NULL,
    estadioID INT NOT NULL,
    CONSTRAINT fk_Estadio FOREIGN KEY (estadioID) REFERENCES Estadio(estadioID)
);

CREATE TABLE Banda (
    bandaID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Asiento (
    asientoID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    fila VARCHAR(50) NOT NULL,
    columna VARCHAR(50) NOT NULL,
    esta_vendido BIT NOT NULL,
    seccionID INT NOT NULL,
    CONSTRAINT fk_Seccion FOREIGN KEY (seccionID) REFERENCES Seccion(seccionID)
);


CREATE TABLE Entrada (
    bandaID INT IDENTITY NOT NULL PRIMARY KEY,
    nombre varchar(50) NOT NULL
);

CREATE TABLE Entrada (
    DNI VARCHAR(50) NOT NULL,
    bandaID INT NOT NULL,
    asientoID INT NOT NULL,
    seccionID INT NOT NULL,
    estadioID INT NOT NULL,
    PRIMARY KEY (DNI, bandaID, asientoID, seccionID, estadioID),
    CONSTRAINT fk_Cliente FOREIGN KEY (DNI) REFERENCES Cliente(DNI),
    CONSTRAINT fk_Banda FOREIGN KEY (bandaID) REFERENCES Banda(bandaID),
    CONSTRAINT fk_Asiento FOREIGN KEY (asientoID) REFERENCES Asiento(asientoID),
    CONSTRAINT fk_Seccion FOREIGN KEY (seccionID) REFERENCES Seccion(seccionID),
    CONSTRAINT fk_Estadio FOREIGN KEY (estadioID) REFERENCES Estadio(estadioID)
);
