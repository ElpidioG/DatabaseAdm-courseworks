-- CREAR BASE DE DATOS PRACTICA EVALUACION
CREATE DATABASE Pr�ctica_Evaluaci�n
-- CREAR TABLA PERSONAS
CREATE TABLE Personas (Nombre varchar (50), Apellido1 varchar (50), Apellido2 varchar (50))
-- AGREGAR DATOS A LA TABLA
INSERT INTO PERSONAS
VALUES ('Antonio', 'P�rez', 'G�mez'),
	   ('Luis', 'L�pez', 'P�rez'),
	   ('Antonio', 'Garc�a', 'Rodr�guez'),
	   ('Pedro', 'Ru�z', 'Gonz�lez')

--1. Consultar todo
SELECT * FROM PERSONAS
--2. CONSULTAR NOMBRE Y PRIMER APELLIDO DE TODOS
SELECT Nombre, Apellido1 FROM Personas
--3. Queremos saber los nombres diferentes de la tabla personas
Select DISTINCT NOMBRE FROM PERSONAS

--4.Seleccionar las personas cuyo nombre sea ANTONIO.
SELECT NOMBRE, Apellido1, Apellido2 FROM PERSONAS
WHERE NOMBRE = 'Antonio'

--5. Mostrar los resultados donde nombre igual a Antonio y apellido1 sea iguala Garcia.
SELECT NOMBRE, Apellido1, Apellido2 FROM PERSONAS
WHERE NOMBRE = 'Antonio' AND Apellido1 = 'Garc�a'

--6. Mostrar los resultados donde nombre igual a Antonio o el apellido1 sea igual a garcia.

SELECT NOMBRE, Apellido1, Apellido2 FROM PERSONAS
WHERE NOMBRE = 'Antonio' OR Apellido1 = 'Garc�a'

--7. Mostrar los resultados donde nombre igual a Antonio y apellido1 sea igual a Garc�a o Apellido1 igual a L�pez.

SELECT NOMBRE, Apellido1, Apellido2 FROM PERSONAS
WHERE NOMBRE = 'Antonio' and Apellido1 = 'Garc�a' or Apellido1 = 'L�pez'

--8. Ordenar la tabla de manera descendente por Apellido1.
SELECT NOMBRE, Apellido1, Apellido2 FROM PERSONAS
ORDER BY Apellido1 DESC

--9. Queremos cambiar el apellido2 Rodr�guez por Benito
UPDATE PERSONAS
SET Apellido2 = 'Benito'
WHERE Apellido2 = 'Rodr�guez'
 
--10. Queremos borrar a la persona Luis Lopez Perez.
DELETE FROM PERSONAS WHERE Nombre = 'Luis' and Apellido1 = 'L�pez' and Apellido2 = 'P�rez'

--11. Dada la tabla persona queremos obtener los dos primeros valores.
SELECT TOP 2 * FROM Personas

--12. Dada la tabla persona queremos obtener los dos �ltimos valores.
SELECT TOP 2 * FROM Personas 
ORDER BY NOMBRE DESC

--13. Mostrar los nombres que empiezan con �AN�. 
SELECT NOMBRE FROM PERSONAS WHERE NOMBRE LIKE 'AN%'

--14. Mostrar las personas que tienen una �Z� en su Apellido1.
SELECT * FROM PERSONAS WHERE APELLIDO1 LIKE '%Z%'

--15. Mostrar las personas cuyo nombre contengan una �R�.
SELECT * FROM PERSONAS WHERE NOMBRE LIKE '%R%'

--16. Mostrar las personas cuyo Apellido1 sea �P�rez� o �Ruiz�. (Utilizar IN)
SELECT * FROM PERSONAS WHERE Apellido1 IN ('P�rez', 'Ru�z')

--17. Seleccionar las personas cuyo Apellido1 NO est�n entre �Fern�ndez� y �Huertas�.
SELECT * FROM PERSONAS WHERE Apellido1 NOT BETWEEN 'Fern�ndez' AND 'Huertas'

--18. Seleccionar las personas cuyo Apellido1 NO est�n entre �Ruiz� y �Huertas�.
SELECT * FROM PERSONAS WHERE Apellido1 NOT IN ('Ru�z', 'Huertas')

--19. Dada la tabla de �personas�, queremos a�adir una nueva columna con la fecha de nacimiento (Fecha_nac)
ALTER TABLE PERSONAS
ADD FECHA_DE_NACIMIENTO DATE

--20. Se requiere ingresar la todas las fechas de nacimiento. (Colocar cualquier fecha)
UPDATE Personas
SET fecha_de_nacimiento = '10-15-1985'
WHERE Apellido1 = 'P�rez'

UPDATE Personas
SET fecha_de_nacimiento = '10-11-1995'
WHERE Nombre = 'Pedro'

UPDATE Personas
SET fecha_de_nacimiento = '10-10-1982'
WHERE Apellido1 = 'Garc�a'

--21. Antonio Garc�a Rodr�guez se retir� de la tabla de Personas.
Delete from PERSONAS where Nombre = 'Antonio' and APELLIDO1 = 'Garc�a' and Apellido2 = 'Benito'

--22. Mostrar las personas que tengan diferentes nombres.	
SELECT DISTINCT Nombre FROM Personas


