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
SELECT 
  (SELECT s.capacidad_maxima 
   FROM Seccion as s 
   INNER JOIN Estadio as es ON s.estadioID = es.estadioID 
   WHERE es.nombre = 'Defensores del Bajo' AND s.nombre = 'Platea Baja 1') 
-
  (SELECT COUNT(*) 
   FROM Entrada as en  
   INNER JOIN Estadio as es ON en.estadioID = es.estadioID 
   INNER JOIN Seccion as s ON en.seccionID = s.seccionID
   INNER JOIN Banda as b ON en.bandaID = b.bandaID
   WHERE es.nombre = 'Defensores del Bajo' AND b.nombre='El Cuarteto de 3'
   AND s.nombre = 'Platea Baja 1') AS 'Total de asientos disponibles'

--d. Calcular el total de ingresos generados por la venta de entradas para el recital del
--grupo "El Cuarteto de 3" en el estadio "Defensores del Bajo". 
SELECT SUM(en.precio) AS 'Total ingresos generados' FROM Entrada as en INNER JOIN Estadio as es on en.estadioID=es.estadioID
INNER JOIN Banda AS b ON en.bandaID=b.bandaID

/* e. Dado un DNI de un cliente obtener el nombre, la sección, el precio y el número de
asiento (si corresponde) de todas las entradas compradas por ese cliente. */

-- NOMBRE, SECCION, PRECIO, NUMERO DE ASIENTO

SELECT CONCAT(CL.nombre, ' ', CL.apellido) as Cliente, SE.nombre as Campo, EN.precio,
CASE
	WHEN ASI.fila IS NULL OR ASI.columna IS NULL THEN 'N/A'
	ELSE CONCAT(ASI.fila, ASI.columna) 
END as Asiento
FROM Cliente AS CL
INNER JOIN Compra AS CO
ON CO.DNI = CL.DNI
INNER JOIN Entrada AS EN
ON EN.compraID = CO.compraID
INNER JOIN Seccion AS SE
ON SE.seccionID = EN.seccionID
LEFT JOIN Asiento AS ASI      
ON EN.asientoID = ASI.asientoID
WHERE CL.DNI = '12345678';


-- f. Calcular el total de entradas vendidas por cada sección para el recital del grupo "El
-- Cuarteto de 3" en el estadio "Defensores del Bajo"
SELECT s.nombre AS Seccion, COUNT(*) AS 'Entradas Totales'
FROM Entrada as en  
INNER JOIN Estadio as es ON en.estadioID = es.estadioID 
INNER JOIN Seccion as s ON en.seccionID = s.seccionID
INNER JOIN Banda as b ON en.bandaID = b.bandaID
WHERE es.nombre = 'Defensores del Bajo' AND b.nombre = 'El Cuarteto de 3'
GROUP BY s.nombre

--g. Mostrar el nombre del cliente y el precio total de todas las entradas vendidas a ese
--cliente para el recital del grupo "El Cuarteto de 3" en el estadio "Defensores del
--Bajo", ordenado por el precio total 
SELECT	cl.nombre as 'cliente', SUM(en.precio) as 'Compra total'  FROM Cliente as cl 
INNER JOIN Compra as c on c.DNI = cl.DNI
INNER JOIN Entrada as en on en.compraID = c.compraID
INNER JOIN Estadio as es on es.estadioID = en.estadioID
INNER JOIN Banda as b on b.bandaID = en.bandaID
WHERE b.nombre = 'El Cuarteto de 3' and es.nombre = 'Defensores del Bajo'
GROUP BY cl.nombre
-- h. Mostrar lo mismo que el punto anterior pero ordenado por nombre de cliente 
SELECT	cl.nombre as 'cliente', SUM(en.precio) as 'Compra total'  FROM Cliente as cl 
INNER JOIN Compra as c on c.DNI = cl.DNI
INNER JOIN Entrada as en on en.compraID = c.compraID
INNER JOIN Estadio as es on es.estadioID = en.estadioID
INNER JOIN Banda as b on b.bandaID = en.bandaID
WHERE b.nombre = 'El Cuarteto de 3' and es.nombre = 'Defensores del Bajo'
GROUP BY cl.nombre
ORDER BY cl.nombre ASC

