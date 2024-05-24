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

INSERT INTO Compra (fechaCompra, DNI)
VALUES ('2024-05-24', '12345678');

--COMPRA DE CAMPO
INSERT INTO Entrada (compraID, bandaID, asientoID, seccionID, estadioID, DNI_propietario, precio)
VALUES 
(1, 1, null, 1, 1, '12345678', 150.00),
(1, 1, null, 2, 1, '23456789', 200.00),
(1, 1, null, 1, 1, '34567890', 250.00);

--a. Obtener el total de entradas vendidas para el recital del grupo "El Cuarteto de 3" en
--el estadio "Defensores del Bajo". 
SELECT COUNT(*) AS 
'Total de entradas vendidas para el recital del grupo "El Cuarteto de 3" en el estadio "Defensores del Bajo"'
FROM Entrada as en  inner join Estadio as es on en.estadioID = es.estadioID  
inner join Banda as b on en.bandaID = b.bandaID where es.nombre = 'Defensores del Bajo' and b.nombre = 'El Cuarteto de 3'

--b. Determinar el máximo precio de entrada vendida para el recital del grupo "El
--Cuarteto de 3" en el estadio "Defensores del Bajo".

SELECT MAX(precio) AS 'Máximo precio de entrada vendida para el recital del grupo "El Cuarteto de 3" en el estadio "Defensores del Bajo"'
from Entrada as en  inner join Estadio as es on en.estadioID = es.estadioID
inner join Banda as b on en.bandaID = b.bandaID where es.nombre = 'Defensores del Bajo' and b.nombre = 'El Cuarteto de 3'

--c. Contar el número total de asientos disponibles en la sección "Platea baja 1" para el
--recital del grupo "El Cuarteto de 3" en el estadio "Defensores del Bajo". 
