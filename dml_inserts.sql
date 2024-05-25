INSERT INTO Cliente (DNI, nombre, apellido, email)
VALUES ('12345678', 'Juan', 'Pérez', 'juan.perez@example.com'),
       ('23456789', 'Ana', 'Gómez', 'ana.gomez@example.com'),
       ('34567890', 'Carlos', 'Martínez', 'carlos.martinez@example.com'),
       ('45678901', 'María', 'Rodríguez', 'maria.rodriguez@example.com'),
       ('56789012', 'Javier', 'Fernández', 'javier.fernandez@example.com'),
       ('67890123', 'Carmen', 'González', 'carmen.gonzalez@example.com'),
       ('78901234', 'Francisco', 'García', 'francisco.garcia@example.com'),
       ('89012345', 'Teresa', 'López', 'teresa.lopez@example.com'),
       ('90123456', 'Sergio', 'Torres', 'sergio.torres@example.com'),
       ('01234567', 'Isabel', 'Ramírez', 'isabel.ramirez@example.com');

INSERT INTO Estadio (nombre)
VALUES ('Defensores del Bajo'),
	   ('Luna Park');

INSERT INTO Banda (nombre)
VALUES ('El Cuarteto de 3'),
       ('Iron Maiden')

INSERT INTO Seccion (nombre, capacidad_maxima, precio, ofrece_servicios, estadioID)
VALUES ('Campo delantero', 1000, 50.0, 0, 1),
       ('Campo trasero', 2000, 60.0, 0, 1),
       ('Platea baja 1', 1500, 55.0, 1, 1),
       ('Platea baja 2', 1800, 65.0, 1, 1),
       ('Platea alta 1', 1200, 70.0, 1, 1),
       ('Platea alta 2', 2200, 75.0, 1, 1)

-- Asientos hasta A10, B10 y C10 en Platea baja 1
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 3),
	   ('A', '2', 0, 3),
	   ('A', '3', 0, 3),
	   ('A', '4', 0, 3),
	   ('A', '5', 0, 3),
	   ('A', '6', 0, 3),
	   ('A', '7', 0, 3),
	   ('A', '8', 0, 3),
	   ('A', '9', 0, 3),
	   ('B', '10', 0, 3),
	   ('B', '1', 0, 3),
	   ('B', '2', 0, 3),
	   ('B', '3', 0, 3),
	   ('B', '4', 0, 3),
	   ('B', '5', 0, 3),
	   ('B', '6', 0, 3),
	   ('B', '7', 0, 3),
	   ('B', '8', 0, 3),
	   ('B', '9', 0, 3),
	   ('B', '10', 0, 3),
	   ('C', '1', 0, 3),
	   ('C', '2', 0, 3),
	   ('C', '3', 0, 3),
	   ('C', '4', 0, 3),
	   ('C', '5', 0, 3),
	   ('C', '6', 0, 3),
	   ('C', '7', 0, 3),
	   ('C', '8', 0, 3),
	   ('C', '9', 0, 3),
	   ('C', '10', 0, 3);

-- Asientos hasta A10, B10 y C10 en Platea baja 2
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 4),
	   ('A', '2', 0, 4),
	   ('A', '3', 0, 4),
	   ('A', '4', 0, 4),
	   ('A', '5', 0, 4),
	   ('A', '6', 0, 4),
	   ('A', '7', 0, 4),
	   ('A', '8', 0, 4),
	   ('A', '9', 0, 4),
	   ('B', '10', 0, 4),
	   ('B', '1', 0, 4),
	   ('B', '2', 0, 4),
	   ('B', '3', 0, 4),
	   ('B', '4', 0, 4),
	   ('B', '5', 0, 4),
	   ('B', '6', 0, 4),
	   ('B', '7', 0, 4),
	   ('B', '8', 0, 4),
	   ('B', '9', 0, 4),
	   ('B', '10', 0, 4),
	   ('C', '1', 0, 4),
	   ('C', '2', 0, 4),
	   ('C', '3', 0, 4),
	   ('C', '4', 0, 4),
	   ('C', '5', 0, 4),
	   ('C', '6', 0, 4),
	   ('C', '7', 0, 4),
	   ('C', '8', 0, 4),
	   ('C', '9', 0, 4),
	   ('C', '10', 0, 4);

-- Asientos hasta A10, B10 y C10 en Platea alta 1
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 5),
	   ('A', '2', 0, 5),
	   ('A', '3', 0, 5),
	   ('A', '4', 0, 5),
	   ('A', '5', 0, 5),
	   ('A', '6', 0, 5),
	   ('A', '7', 0, 5),
	   ('A', '8', 0, 5),
	   ('A', '9', 0, 5),
	   ('B', '10', 0, 5),
	   ('B', '1', 0, 5),
	   ('B', '2', 0, 5),
	   ('B', '3', 0, 5),
	   ('B', '4', 0, 5),
	   ('B', '5', 0, 5),
	   ('B', '6', 0, 5),
	   ('B', '7', 0, 5),
	   ('B', '8', 0, 5),
	   ('B', '9', 0, 5),
	   ('B', '10', 0, 5),
	   ('C', '1', 0, 5),
	   ('C', '2', 0, 5),
	   ('C', '3', 0, 5),
	   ('C', '4', 0, 5),
	   ('C', '5', 0, 5),
	   ('C', '6', 0, 5),
	   ('C', '7', 0, 5),
	   ('C', '8', 0, 5),
	   ('C', '9', 0, 5),
	   ('C', '10', 0, 5);

-- Asientos hasta A10, B10 y C10 en Platea alta 2
INSERT INTO Asiento (fila, columna, esta_vendido, seccionID)
VALUES ('A', '1', 0, 6),
	   ('A', '2', 0, 6),
	   ('A', '3', 0, 6),
	   ('A', '4', 0, 6),
	   ('A', '5', 0, 6),
	   ('A', '6', 0, 6),
	   ('A', '7', 0, 6),
	   ('A', '8', 0, 6),
	   ('A', '9', 0, 6),
	   ('B', '10', 0, 6),
	   ('B', '1', 0, 6),
	   ('B', '2', 0, 6),
	   ('B', '3', 0, 6),
	   ('B', '4', 0, 6),
	   ('B', '5', 0, 6),
	   ('B', '6', 0, 6),
	   ('B', '7', 0, 6),
	   ('B', '8', 0, 6),
	   ('B', '9', 0, 6),
	   ('B', '10', 0, 6),
	   ('C', '1', 0, 6),
	   ('C', '2', 0, 6),
	   ('C', '3', 0, 6),
	   ('C', '4', 0, 6),
	   ('C', '5', 0, 6),
	   ('C', '6', 0, 6),
	   ('C', '7', 0, 6),
	   ('C', '8', 0, 6),
	   ('C', '9', 0, 6),
	   ('C', '10', 0, 6);

INSERT INTO Compra (fechaCompra, DNI)
VALUES ('2024-05-24', '12345678'),
		('2024-05-12', '34567890'),
		('2024-03-01', '45678901'), -- mismo cliente hace 2 compras en distintos dias
		('2024-02-05', '45678901'),
		('2024-02-28', '89012345'),
		('2024-03-23', '67890123'),
		('2024-04-27', '90123456');

--------------------------------

-- Verificaciones
select * from Cliente
select * from Estadio
select * from Banda
select * from Seccion
select * from Asiento
select * from Compra

--------------------------------


