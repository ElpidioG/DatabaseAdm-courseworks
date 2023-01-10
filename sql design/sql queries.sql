--Cambiare un código postal en la tabla clientes--
UPDATE Clientes
SET Código_Postal = 5555
WHERE Código_Postal = 46500

--Se eliminará a Antonio de la tabla Clientes--
Delete from Clientes where Nombre_Cliente = 'antonio'

-- Se agregará el campo registro a la tabla Clientes--
alter table Clientes add registro varchar(200);	                         

-- Se eliminará la columna Registro a la tabla Clientes--
alter table Clientes drop column registro;

-- Se modificará la cantidad de digitos que puede tener la columna Provincia--
alter table Clientes alter column provincia varchar(200);

--Se pondrá not null en el campo código cliente--
Alter table clientes
alter column Código_cliente int not null

--Se pondrá primary key en las tablas--
Alter table Clientes
add primary key (Código_Cliente)

Alter table Coches
add primary key (Matricula)

Alter table Revisiones
add primary key (Nº_Revisión)

--Se pondrá not null en el campo código cliente de la tabla coches--
Alter table Coches
Alter Column Código_cliente int not null

--Se pondrá foreign key en las tablas--
Alter table Coches
Add foreign key (Código_Cliente) references clientes (Código_Cliente);  

Alter table revisiones
Add foreign key (matricula) references Coches(matricula);  

--Se crearán las relaciones de las tablas--

SELECT Clientes.Código_Cliente, Nombre_Cliente, Matricula, Modelo, Marca
FROM Clientes Join Coches 
ON Clientes.Código_Cliente = Coches.Código_Cliente

SELECT *
FROM Clientes 
JOIN Coches ON Clientes.Código_Cliente = Coches.Código_Cliente
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula

--Se creará una tabla con el campo Establos como autonumérico--

CREATE TABLE GRANJA
(Animales int null, Establos int identity);

--Se seleccionaran campos y registros de las tablas--

SELECT Provincia FROM Clientes
SELECT * FROM Coches

--Se seleccionaran campos y registros de las tablas con las clausulas top, from y distinct--

SELECT TOP 4 * FROM Clientes
SELECT * FROM CLIENTES
SELECT DISTINCT Nombre_Cliente FROM CLIENTES 

--Se seleccionaran campos y registros de las tablas con las clausulas NOT, AND y OR--

SELECT * FROM CLIENTES WHERE NOT Código_Cliente = 100
SELECT * FROM CLIENTES WHERE Código_Cliente = 101 AND Nombre_Cliente = 'CARLOS'
SELECT * FROM CLIENTES WHERE Código_Cliente > 200 OR Código_Cliente = 260

--MIN y MAX--

SELECT MIN (PRECIO) FROM Coches
SELECT MIN (Código_Cliente) FROM CLIENTES WHERE NOT Código_Cliente = 100
SELECT MAX (Código_Cliente) FROM CLIENTES WHERE NOT Código_Cliente = 861
SELECT MIN (Código_Cliente) FROM CLIENTES WHERE Código_Cliente > 225 AND Código_Cliente < 352

--Se seleccionaran campos y registros de las tablas con la clausula WHERE--

SELECT PRECIO, MARCA
FROM COCHES
WHERE PRECIO > 20000

SELECT PRECIO, MARCA
FROM COCHES
WHERE MARCA = 'FORD'

--Alias--

SELECT Código_Cliente AS CC
FROM Clientes

--TRUNCATE, borrar datos de una tabla--

TRUNCATE TABLE GRANJA
SELECT * FROM GRANJA

--BETWEEN, IN--

SELECT PRECIO FROM COCHES WHERE PRECIO BETWEEN 24000 AND 27000
SELECT COLOR FROM COCHES WHERE COLOR IN ( 'ROJO', 'BLANCO')

--ORDER BY--

SELECT * FROM CLIENTES
ORDER BY Código_Cliente

SELECT * FROM CLIENTES
ORDER BY Código_Cliente DESC

--GROUP BY--

SELECT CAMBIO_ACEITE, COUNT(*) AS TOTAL
FROM REVISIONES
GROUP BY CAMBIO_ACEITE

SELECT PRECIO, MAX(Precio) AS TOTAL
FROM Coches
GROUP BY PRECIO

-- CHECK
-- NOT NULL
-- DEFAULT

-- ALTER COLUMN PRECIO
ALTER TABLE COCHES
ALTER COLUMN PRECIO INT NULL


--GROUP BY
SELECT Cambio_Aceite, COUNT(*) AS TOTAL
FROM REVISIONES
GROUP BY Cambio_Aceite


--SUM
SELECT PRECIO, SUM(PRECIO)+89890 AS PRECIOSUMADO
FROM COCHES
GROUP BY PRECIO


--MAX
SELECT  MAX(PRECIO) AS PRECIO_MAXIMO
FROM COCHES


-- MIN
SELECT MIN(PRECIO) AS MINIMO
FROM Coches


--LIKE
SELECT * FROM COCHES WHERE COLOR LIKE '%a'
SELECT * FROM COCHES WHERE COLOR LIKE '%a%'
SELECT * FROM COCHES WHERE COLOR LIKE 'a%'
SELECT * FROM COCHES WHERE NOT COLOR LIKE '%a%'

--DATE
SELECT * FROM CLIENTES WHERE Fecha_Nacimiento BETWEEN '1965-12-07' AND '1968-11-08'
SELECT * FROM CLIENTES WHERE Fecha_Nacimiento <= '1965-12-07'
SELECT * FROM CLIENTES WHERE Fecha_Nacimiento >= '1965-12-07'

--HAVING
SELECT NOMBRE_CLIENTE, SUM(CÓDIGO_POSTAL)
FROM CLIENTES
GROUP BY Nombre_Cliente
HAVING SUM(Código_Postal)>93599


--VIEW
CREATE VIEW FORD AS
SELECT * FROM COCHES WHERE MARCA = 'FORD'
SELECT * FROM FORD


--COUNT
SELECT COUNT (OTROS) FROM REVISIONES 
SELECT COUNT (*) FROM REVISIONES
SELECT COUNT (DISTINCT CAMBIO_ACEITE) FROM REVISIONES 
SELECT COUNT (*) FROM Clientes WHERE (Código_Postal) >46002

--DEFAULT
ALTER TABLE COCHES
ADD CONSTRAINT DF_AIRBAG
DEFAULT 'AIRBAG' FOR EXTRAS_INSTALADOS