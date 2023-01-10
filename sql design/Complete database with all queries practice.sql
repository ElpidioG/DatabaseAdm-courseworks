--Creaci�n de la base de datos
CREATE DATABASE PRACTICA_EVALUACI�N_FINAL

--Creaci�n de las tablas
CREATE TABLE CATEGOR�AS (Categor�a int primary key, T�tulo varchar (50), Salario float, Trienio float)
CREATE TABLE DPTOFICINAS (C�digo int primary key, Oficina int, Departamento int, Telefono varchar (15))
CREATE TABLE OFICINAS (Oficina int primary key, ciudad varchar (50), Regi�n varchar (50))
CREATE TABLE DEPARTAMENTOS (Deptno int primary key, Nombre varchar (50))
CREATE TABLE EMPLEADOS (Num int primary key, Nombre varchar (50), Edad int, Departamento int, Categor�a int, Contrato date)

--Establecer llaves for�neas PARA RELACIONES
ALTER TABLE EMPLEADOS ADD FOREIGN KEY (Categor�a) REFERENCES CATEGOR�AS (Categor�a)
ALTER TABLE EMPLEADOS ADD FOREIGN KEY (Departamento) REFERENCES DPTOFICINAS (C�digo)
ALTER TABLE DPTOFICINAS ADD FOREIGN KEY (Oficina) REFERENCES OFICINAS (Oficina)
ALTER TABLE DPTOFICINAS ADD FOREIGN KEY (Departamento) REFERENCES DEPARTAMENTOS (Deptno)

--Agregar datos a las tablas
INSERT INTO CATEGOR�AS VALUES (1, 'Director', 50000, 1000),
							  (2, 'Jefe Secci�n', 40000, 800),
							  (3, 'Administrativo',35000, 700),
							  (4, 'Comercial', 35000, 700),
							  (5, 'Empl. almac�n', 25000, 500)
INSERT INTO OFICINAS VALUES (11, 'Valencia', 'Este'),
							(12, 'Barcelona', 'Este'),
							(13, 'Alicante', 'Este'),
							(21, 'Madrid', 'Centro'),
							(22, 'Toledo', 'Centro')
INSERT INTO DEPARTAMENTOS VALUES (1, 'Direcci�n'),
								 (2, 'Administraci�n'),
								 (3, 'Comercial'),
								 (4, 'Almac�n'),
								 (5, 'Inform�tica')
INSERT INTO DPTOFICINAS VALUES (100, 11, 1, '963.981.000'),
							   (101, 11, 2, '963.981.100'),
							   (102, 11, 3, '963.981.200'),
							   (103, 11, 4, '963.981.300'),
							   (104, 11, 5, '963.981.400'),
							   (105, 12, 2, '933.551.000'),
							   (106, 12, 3, '933.551.100'),
							   (107, 12, 4, '933.551.200'),
							   (108, 13, 3, '961.671.000'),
							   (109, 21, 2, '913.641.000'),
							   (110, 21, 3, '913.641.100'),
							   (111, 21, 4, '913.641.200'),
							   (112, 22, 3, '925.871.000')
INSERT INTO EMPLEADOS VALUES (1000, 'Antonio Gutierrez', 45, 100, 1, '01/12/1989'),
							 (1001, 'Paloma Blanco', 56, 100, 2, '03/17/1992'),
							 (1002, 'Antonio Pazos', 52, 100, 3, '03/14/1986'),
							 (1003, 'Ana Garcia', 27, 101, 2, '10/23/1995'),
							 (1004, 'Amparo Beltran', 28, 101, 3, '02/04/1998'),
							 (1005, 'Enrique Gomez', 36, 101, 3, '07/05/2000'),
							 (1006, 'Nieves Soler', 25, 105, 2, '03/13/1996'),
							 (1007, 'Juan Jose Velasco', 34, 105, 3, '02/14/1997'),
							 (1008, 'Isidro Perez', 22, 109, 2, '05/06/2000'),
							 (1009, 'Ignacio Lopez', 38, 109, 3, '04/07/1990'),
							 (1010, 'Vicente Salvador', 29, 109, 3, '07/08/1995'),
							 (1011, 'Carmen Hernandez', 44, 102, 2, '07/16/1990'),
							 (1012, 'Juan Pons', 50, 102, 4, '04/14/1994'),
							 (1013, 'Pedro Fernandez', 23, 102, 4, '09/16/1999'),
							 (1014, 'Silvia Blasco', 33, 102, 4, '02/23/1992'),
							 (1015, 'Jose Alegre', 26, 106, 2, '08/26/1997'),
							 (1016, 'Cristina Prats', 46, 106, 4, '11/18/1984'),
							 (1017, 'Carlos Gimenez', 35, 106, 4, '05/15/1995'),
							 (1018, 'Maria Gonzalez', 37, 108, 4, '06/16/1996'),
							 (1019, 'Manuel Torres', 24, 108, 4, '01/19/1998'),
							 (1020, 'Jose Perez', 28, 110, 2, '03/22/1996'),
							 (1021, 'Alejandro Martos', 34, 110, 4, '10/17/1994'),
							 (1022, 'Veronica Muelas', 25, 110, 4, '07/05/1997'),
							 (1023, 'Elena Lopez', 29, 112, 4, '07/09/1994'),
							 (1024, 'Isabel Fernandez', 22, 112, 4, '10/12/2000'),
							 (1025, 'Jose Mujica', 49, 103, 2, '09/04/1987'),
							 (1026, 'Pedro Bledos', 26, 103, 5, '02/06/1998'),
							 (1027, 'Pablo Costas', 35, 107, 5, '07/03/1995'),
							 (1028, 'Ester Castro', 27, 111, 2, '07/18/1996'),
							 (1029, 'Gregorio Mas', 33, 111, 5, '03/14/1997'),
							 (1030, 'Jose Medina', 34, 104, 2, '06/14/1995'),
							 (1031, 'Maria Utrillas', 27, 104, 3, '08/19/1997'),
							 (1032, 'Marina Gilabert', 24, 104, 3, '12/01/1998')


--Contestar a las siguientes preguntas, utilizando para ello el lenguaje SQL.

--1)	Nombre y edad de los empleados.
SELECT NOMBRE, EDAD FROM EMPLEADOS

--2)	Salario y trienios de cada categor�a si suponemos un aumento del 2%.
SELECT SUM( SALARIO + SALARIO *0.02) AS 'Salario si se le suma el 2%', SUM( Trienio + Trienio *0.02) AS 'Trienios si se le suma el 2%', 
Categor�a FROM CATEGOR�AS  GROUP BY CATEGOR�A

--3)	A�o de contrataci�n de cada empleado.
SELECT NOMBRE, YEAR(CONTRATO) FROM EMPLEADOS

--4)	Edades de los empleados.
SELECT EDAD FROM EMPLEADOS

--5)	Categor�as profesionales que superan las 35.000 de salario.
SELECT CATEGOR�A, T�tulo, SALARIO  FROM CATEGOR�AS WHERE SALARIO > 35000

-- 6)	Datos del empleado n�mero 1014.
SELECT * FROM EMPLEADOS WHERE NUM = 1014

--7)	Empleados del departamento 106.
SELECT * FROM EMPLEADOS WHERE DEPARTAMENTO= 106

--8)	Empleados cuya contrataci�n se produjo en el a�o 2000.
SELECT * FROM EMPLEADOS WHERE YEAR(CONTRATO) = 2000

--9)	Empleados que no sean comerciales (c�digo de categor�a 4).
SELECT * FROM EMPLEADOS WHERE NOT Categor�a = 4

--10)	Empleados contratados entre los a�os 1990 y 1994.
SELECT * FROM EMPLEADOS WHERE Contrato BETWEEN '1-1-1990' AND '12-31-1994'

--11)	Categor�as que tienen un salario inferior a 35.000 o superior a 40.000.
SELECT * FROM CATEGOR�AS WHERE Salario <35000 OR Salario >40000

--12)	Empleados cuya categor�a es director o jefe de secci�n (c�digos 1 y 2).
SELECT * FROM EMPLEADOS WHERE Categor�a = 1 OR Categor�a = 2

--13)	Empleados de nombre 'Jose'.
SELECT * FROM EMPLEADOS WHERE Nombre like '%Jose%'

--14)	Empleados que pertenecen a la categor�a de administrativo (c�digo 3) y que tienen una edad mayor de 35 a�os.
SELECT * FROM EMPLEADOS WHERE Categor�a = 3 AND Edad >35

--15)	Empleados que no pertenecen al departamento 110.
SELECT * FROM EMPLEADOS WHERE NOT Departamento = 110

--16)	Nombre y edad de los empleados ordenados por edad.
SELECT NOMBRE, EDAD FROM EMPLEADOS ORDER BY Edad

--17)	Nombre y edad de los empleados ordenados por nombre de forma descendente.
SELECT NOMBRE, EDAD FROM EMPLEADOS ORDER BY NOMBRE DESC

--18)	Nombre del empleado y de la categor�a en el que trabaja.
SELECT Nombre, T�TULO FROM EMPLEADOS JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a

--19)	C�digo y tel�fonos de los departamentos de las oficinas de la regi�n 'Centro'.
SELECT C�DIGO, TELEFONO, Regi�n FROM DPTOFICINAS JOIN OFICINAS ON DPTOFICINAS.Oficina = OFICINAS.Oficina WHERE REGI�N = 'CENTRO'

--20)	Nombre del empleado y ciudad en la que trabaja.
SELECT NOMBRE, CIUDAD FROM EMPLEADOS JOIN DPTOFICINAS ON EMPLEADOS.Departamento = DPTOFICINAS.C�digo JOIN OFICINAS ON DPTOFICINAS.Oficina = OFICINAS.Oficina 

--21)	Sueldo de cada empleado incluyendo trienios.
SELECT SUM(SALARIO + TRIENIO) AS 'Sueldo incluyendo trienios', Nombre FROM EMPLEADOS JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a GROUP BY Nombre

--22)	Nombre de los empleados y de sus jefes de secci�n. 
 SELECT Emp.Nombre as 'empleado', dir.Nombre as 'jefe_de_secci�n'
 FROM (SELECT *FROM Empleados e WHERE e.Categor�a > 2) AS Emp JOIN (SELECT * FROM Empleados m WHERE m.Categor�a = 2) 
 AS Dir ON emp.Departamento = dir.Departamento




--23) Suma del sueldo de los empleados, sin contar trienios.
SELECT SUM(SALARIO) AS 'Sueldo de los empleados sin trienio' FROM EMPLEADOS JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a 

--24)	Promedio del sueldo, sin contar trienios, de la oficina de 'Barcelona'.
SELECT AVG(SALARIO) AS 'Promedio del sueldo sin trienio', ciudad FROM EMPLEADOS 
JOIN DPTOFICINAS ON EMPLEADOS.Departamento = DPTOFICINAS.C�digo 
JOIN OFICINAS ON DPTOFICINAS.Oficina = OFICINAS.Oficina 
JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a group by ciudad   Having ciudad= 'Barcelona'

--25)	Salarios m�ximo y m�nimo de los empleados, incluyendo trienios.
SELECT MAX(SALARIO + TRIENIO) AS 'Salario maximo de los empleados', MIN(SALARIO + TRIENIO) AS 'Salario minimo de los empleados' 
FROM EMPLEADOS JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a

--26)	N�mero de empleados que superan los 40 a�os.
SELECT COUNT(NOMBRE) AS 'NUMERO DE EMPLEADOS CON MAS DE 40' FROM EMPLEADOS WHERE EDAD >40

--27)	N�mero de edades diferentes que tienen los empleados.
SELECT COUNT(DISTINCT EDAD) AS 'EDADES DIFERENTES' FROM EMPLEADOS

--28)	Categor�a y suma de los sueldos de los empleados, contando trienios, de cada una de las categor�as.
SELECT EMPLEADOS.Categor�a, T�TULO, SUM(SALARIO + TRIENIO) AS 'SUELDO DE LOS EMPLEADOS POR CATEGORIA CON TRIENIO' FROM EMPLEADOS 
JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a  GROUP BY EMPLEADOS.Categor�a, T�TULO 

--29)	Nombre y suma de los sueldos de los empleados, contando trienios, de cada oficina. 
SELECT ciudad, OFICINAS.Oficina,  SUM(SALARIO+TRIENIO) AS 'SUELDO DE LOS EMPLEADOS' FROM EMPLEADOS
JOIN DPTOFICINAS ON EMPLEADOS.Departamento = DPTOFICINAS.C�digo 
JOIN OFICINAS ON DPTOFICINAS.Oficina = OFICINAS.Oficina 
JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a GROUP BY ciudad, OFICINAS.Oficina


--30)	T�tulo y suma de trienios de las categor�as cuya suma supera las 10000. 
SELECT CATEGOR�AS.T�tulo, SUM(TRIENIO) as 'trienios de las categorias' FROM CATEGOR�AS
JOIN EMPLEADOS ON CATEGOR�AS.Categor�a = EMPLEADOS.Categor�a
GROUP BY T�tulo
HAVING SUM(Trienio) > 10000



--31)	Nombre del departamento y n�mero de empleados de los departamentos que tienen m�s de 5 empleados.
SELECT DEPARTAMENTOS.Nombre, COUNT(EMPLEADOS.Nombre) AS 'NUMERO DE EMPLEADOS DE LOS DEPARTAMENTOS CON MAS DE 5 EMPLEADOS' FROM DEPARTAMENTOS
JOIN DPTOFICINAS ON DEPARTAMENTOS.Deptno = DPTOFICINAS.DEPARTAMENTO
JOIN EMPLEADOS ON DPTOFICINAS.C�digo = EMPLEADOS.Departamento GROUP BY DEPARTAMENTOS.Nombre
HAVING COUNT(EMPLEADOS.Nombre) > 5

--32)	Nombre y sueldo, contando trienios, de los empleados cuyos sueldos son inferiores a la media de sueldos de la empresa. 
SELECT NOMBRE, SUM(SALARIO+TRIENIO) AS 'Sueldo con trienio' FROM EMPLEADOS
JOIN DPTOFICINAS ON EMPLEADOS.Departamento = DPTOFICINAS.C�digo 
JOIN OFICINAS ON DPTOFICINAS.Oficina = OFICINAS.Oficina 
JOIN CATEGOR�AS ON EMPLEADOS.Categor�a = CATEGOR�AS.Categor�a 
WHERE empleados.categor�a=CATEGOR�AS.Categor�a AND salario< (SELECT AVG(salario)
FROM empleados, CATEGOR�AS WHERE empleados.Categor�a=CATEGOR�AS.Categor�a) group by EMPLEADOS.Nombre

--33)	T�tulo de las categor�as donde existe un empleado con contrato anterior a 1990.
SELECT T�TULO, Nombre, Contrato FROM CATEGOR�AS 
JOIN EMPLEADOS ON CATEGOR�AS.Categor�a = EMPLEADOS.Categor�a
WHERE Contrato < '1-1-1990'

--34)	Nombre de los empleados que tiene un contrato m�s antiguo que cualquier empleado del departamento de 'Inform�tica'.
SELECT Empleados.Nombre, Contrato 
FROM Categor�as join Empleados on  Categor�as.Categor�a = Empleados.Categor�a join Dptoficinas on Empleados.Departamento = Dptoficinas.C�digo join
Oficinas on  Dptoficinas.Oficina = Oficinas.Oficina join Departamentos on Dptoficinas.departamento = Departamentos.Deptno
WHERE Contrato < all (select Contrato from EMPLEADOS join DEPARTAMENTOS on DEPARTAMENTOS.Deptno = Empleados.Categor�a where Deptno = 5)
AND Not Departamentos.Nombre = 'Inform�tica'



--35)	Ciudad y n�mero de empleados de la oficina que tiene un n�mero de empleados superior a la media de la empresa.
SELECT ciudad, COUNT(*)  as 'n�mero_de_empleados' FROM oficinas, dptoficinas, empleados
WHERE oficinas.oficina=dptoficinas.oficina AND C�digo=empleados.departamento
GROUP BY ciudad HAVING COUNT(*)> (SELECT COUNT(*)/(SELECT COUNT(*) FROM oficinas) FROM empleados)


