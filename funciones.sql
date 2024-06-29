-- 5. Escriba una función que recibiendo el nombre de una banda devuelva un identificador de esta.

CREATE FUNCTION getBandaID(@nombre VARCHAR(100))
RETURNS INT
AS
BEGIN
    DECLARE @bandaID INT;
    SELECT @bandaID = bandaID 
    FROM Banda 
    WHERE nombre = @nombre;
    RETURN @bandaID;
END;
GO

SELECT nombre, dbo.getBandaID(nombre) AS 'bandaID'
FROM Banda;