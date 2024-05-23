INSERT INTO Cliente (DNI, nombre, apellido, email)
VALUES ('12345678A', 'Juan', 'Pérez', 'juan.perez@example.com'),
       ('23456789B', 'Ana', 'Gómez', 'ana.gomez@example.com'),
       ('34567890C', 'Carlos', 'Martínez', 'carlos.martinez@example.com'),
       ('45678901D', 'María', 'Rodríguez', 'maria.rodriguez@example.com'),
       ('56789012E', 'Javier', 'Fernández', 'javier.fernandez@example.com'),
       ('67890123F', 'Carmen', 'González', 'carmen.gonzalez@example.com'),
       ('78901234G', 'Francisco', 'García', 'francisco.garcia@example.com'),
       ('89012345H', 'Teresa', 'López', 'teresa.lopez@example.com'),
       ('90123456I', 'Sergio', 'Torres', 'sergio.torres@example.com'),
       ('01234567J', 'Isabel', 'Ramírez', 'isabel.ramirez@example.com');

INSERT INTO Estadio (nombre)
VALUES ('Defensores del Bajo'),
	   ('Luna Park');

INSERT INTO Banda (nombre)
VALUES ('El Cuarteto de 3'),
       ('Iron Maiden')

INSERT INTO Seccion (nombre, capacidad_maxima, precio, ofrece_servicio, estadioID)
VALUES ('Campo delantero', 1000, 50.0, 1, 1),
       ('Campo trasero', 2000, 60.0, 0, 1),
       ('Platea baja 1', 1500, 55.0, 1, 1),
       ('Platea baja 2', 1800, 65.0, 0, 1),
       ('Platea alta 1', 1200, 70.0, 1, 1),
       ('Platea alta 2', 2200, 75.0, 0, 1)

