--1. Crear una base de datos con el nombre Cl�nica.
CREATE DATABASE CL�NICA

--2. Crear una tabla con el nombre de Pacientes con los siguientes campos:
CREATE TABLE PACIENTES (C�digo_Paciente int, Nombre_Paciente varchar (50), Apellidos_Paciente varchar (50), Direcci�n varchar (50), Poblaci�n varchar (50), C�digo_Postal int, Provincia varchar (50), Tel�fono_Paciente varchar (50), Fecha_Nacimiento date)

--3. Crear otra tabla con el nombre de M�dicos con los siguientes campos:
CREATE TABLE M�DICOS (C�digo_M�dico varchar (50), Nombre_M�dico varchar (50), Apellidos_M�dico varchar (50),  Tel�fono_M�dico varchar (50), Especialidad varchar (50))

--4. Crear otra tabla con el nombre de Ingresos con los siguientes campos:
CREATE TABLE INGRESOS (N�_Ingreso int identity,  Habitaci�n int, Cama varchar (50), Fecha_Ingreso date)

--6. Modificar la estructura de la tabla Pacientes de la base de datos Cl�nica siguiendo estas indicaciones:
ALTER TABLE PACIENTES
ALTER COLUMN C�digo_Paciente int not null
ALTER TABLE PACIENTES
ADD PRIMARY KEY (C�digo_Paciente)
ALTER TABLE PACIENTES
DROP COLUMN Provincia

--7. Modificar la estructura de la tabla M�dicos con los siguientes datos:
ALTER TABLE M�DICOS
ALTER COLUMN C�digo_M�dico varchar (50) not null
ALTER TABLE M�DICOS
ADD PRIMARY KEY (C�digo_M�dico)
ALTER TABLE M�DICOS
DROP COLUMN Tel�fono_M�dico

--8. Modificar la estructura de la tabla Ingresos con los siguientes datos:
ALTER TABLE INGRESOS
ADD PRIMARY KEY (N�_Ingreso)

 --9. Modificar la tabla Pacientes de la base de datos Cl�nica siguiendo estas indicaciones:
ALTER TABLE PACIENTES 
DROP CONSTRAINT PK__PACIENTE__F6D5D781C042A226
ALTER TABLE PACIENTES 
ALTER COLUMN C�digo_Paciente int NOT NULL
ALTER TABLE PACIENTES
ADD PRIMARY KEY (C�digo_Paciente)
ALTER TABLE PACIENTES 
ALTER COLUMN Nombre_Paciente varchar (15)
ALTER TABLE PACIENTES 
ALTER COLUMN Apellidos_Paciente varchar (30)
ALTER TABLE PACIENTES 
ALTER COLUMN Direcci�n varchar (30)
ALTER TABLE PACIENTES 
ALTER COLUMN Poblaci�n varchar (15)
ALTER TABLE PACIENTES 
ALTER COLUMN C�digo_Postal numeric (5)
ALTER TABLE PACIENTES 
ALTER COLUMN Tel�fono_Paciente varchar (10)
ALTER TABLE PACIENTES 
ALTER COLUMN Fecha_Nacimiento date

 --11. Modificar la tabla M�dicos con los siguientes campos:
ALTER TABLE M�DICOS
DROP CONSTRAINT PK__M�DICOS__A2ACEAB4A81816EF
ALTER TABLE M�DICOS
ALTER COLUMN C�digo_M�dico varchar (5) NOT NULL
ALTER TABLE M�DICOS
ADD PRIMARY KEY (C�digo_M�dico)
ALTER TABLE M�DICOS 
ALTER COLUMN Nombre_M�dico varchar (15)
ALTER TABLE M�DICOS 
ALTER COLUMN Nombre_M�dico varchar (15)
ALTER TABLE M�DICOS 
ALTER COLUMN Apellidos_M�dico varchar (30)
ALTER TABLE M�DICOS 
ALTER COLUMN Especialidad varchar (20)

-- 12. Modificar la tabla Ingresos con los siguientes campos: 
ALTER TABLE Ingresos
ALTER COLUMN Habitaci�n int 
ALTER TABLE Ingresos
ALTER COLUMN Cama varchar (1)
ALTER TABLE Ingresos
ALTER COLUMN Fecha_Ingreso date

/* 17. . A�ade a la tabla Ingresos un campo Codigo Paciente de tipo N�mero de Tama�o Entero    (este campo servir� para saber a qu� paciente corresponde el ingreso), y un campo C�digo M�dico de tipo Texto y Tama�o 5 (este campo servir� para saber a qu� m�dico se encarga del ingreso)
Crear las relaciones oportunas entre las tablas.*/
ALTER TABLE Ingresos
ADD C�digo_Paciente int, C�digo_M�dico varchar (5)
ALTER TABLE INGRESOS
ADD FOREIGN KEY (C�digo_Paciente) REFERENCES Pacientes(C�digo_Paciente)
ALTER TABLE INGRESOS
ADD FOREIGN KEY (C�digo_M�dico) REFERENCES M�dicos(C�digo_M�dico)

SELECT *
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico


--18.  Introduce los siguientes datos en la tabla Pacientes
insert into Pacientes values (100, 'Jose','Romerales Pinto','Azorin,34','Mostoles',28935,912563256,'1975/03/21'),
							 (102,'Santiago','Gonzalez Sancho','Coslada,12','Madrid',28024,914562587,'1947/10/30'),
							 (103,'Carmen','Rodriguez Santacana','Javier Poncela,3','Getafe',28902,915478555,'1987/11/06'),
							 (110,'Alberto','Puig Monza','Division Azul,56','Getafe',28902,914585196,'1936/07/18'),
							 (120,'Sergio','Perez Sanabria','Pizarro,45','Alcorcon',28223,915584471,'1950/12/04'),
							 (130,'Jaime','Flores Lopez','Alcatraz,56','Madrid',28001,914526654,'1932/01/23'),
							 (131,'Enrique','Morales Miguel','Madrid,45','Madrid',28028,914552203,'1990/08/12'),
							 (140,'Ana','Torrente Hermosilla','Barcelona,35','Alcorcon',28223,914785236,'1958/03/25'),
							 (142,'Olga','Prats Hernandez','Versalles,2','Mostoles',28935,917458963,'1958/03/25'),
							 (200,'Carlos','Jimenez Blanco','Gran Via,123','Madrid',28003,914589632,'1973/01/12'),
							 (201,'Maria','Tomas Caballo','Enrique Velasco,3','Madrid',28028,914578559,'1955/05/05'),
							 (207,'Rogelia','Guera Santa','Castellana,12','Madrid',28025,914562258,'1990/07/12'),
							 (220,'Ivan','Granadino Callejas','Doctor Mas,46','Madrid',28015,914522369,'1975/07/19'),
							 (231,'Luis','Navarrete Prat','Trujillo,33','Alcorcon',28223,914512589,'1940/06/13'),
							 (240,'Monica','Armengol Prats','Doce de octrubre,1','Madrid',28028,914588963,'1985/07/02'),
							 (300,'Joaquin','Rodriguez Monzon','Barcelona,111','Alcorcon',28223,914578521,'1977/05/05'),
							 (302,'Loreto','Martinez Lozano','Cipreses,56','Alcorcon',28223,914589632,'1951/01/24'),
							 (400,'Luis','Martinez Garcia','Olmos,54','Mostoles',28935,911235641,'1980/01/24'),
							 (401,'Luisa','Garcia Montoro','Olmos,54','Mostoles',28935,911235652,'1975/01/10')
--19. Introduce los siguientes datos en la tabla M�dicos.
insert into M�dicos values ('AJH','Antonio','Jimenez Hernandez','Pediatria'),
						   ('CEM','Carmen','Esteban Mu�oz','Psiquiatria'),
						   ('CSM','Carlos','Sanchez Martinez','General'),
						   ('ESMH','Eva','San Martin Hernandez','Pediatria'),
						   ('FHL','Fernanda','Hernandez Lopez','Radiologia'),
						   ('FVP','Federico','Vidal Planella','Analilis'),
						   ('JMP','Juana','Moreno Navarro','Intensivos'),
					       ('OPA','Olga','Pons Alvarez','Intensivos'),
						   ('PAP','Pedro','Armengol Prats','Cirugia'),
						   ('SGM','Sebastian','Gutierrez Mellado','Oftalmologia'),
						   ('SVT','Santiago','Vazquez Torres','Ginecologia')
--20. Introduce los siguientes datos en la tabla Ingresos
insert into Ingresos values (101,'A','2008/04/23',302,'SVT'),
						    (105,'A','2008/05/24',103,'CSM'),
						    (125,'B','2008/06/15',300,'PAP'),
						    (204,'B','2008/09/12',120,'SGM'),
						    (205,'B','2008/10/12',100,'JMP'),
						    (204,'A','2009/01/04',102,'CEM'),
						    (201,'A','2009/02/01',240,'FHL'),
						    (201,'A','2010/04/02',110,'OPA'),
						    (305,'A','2010/05/03',220,'FVP'),
						    (304,'B','2010/05/10',201,'ESMH'),
						    (306,'A','2010/05/13',207,'OPA'),
						    (303,'B','2010/06/15',220,'CSM'),
						    (302,'A','2010/06/16',131,'AJH'),
						    (504,'B','2010/06/10',130,'SGM'),
						    (504,'B','2010/07/02',231,'ESMH'),
						    (405,'B','2010/07/05',200,'FVP'),
						    (401,'A','2010/08/08',140,'PAP'),
						    (408,'B','2010/08/10',142,'SGM'),
						    (504,'A','2010/08/12',120,'SGM'),
						    (509,'B','2010/08/20',240,'FHL')
			
--Consultas tabla Pacientes
--1. Se requiere saber el nombre y apellidos de los pacientes ingresados en 2008
SELECT Nombre_Paciente, Apellidos_Paciente, Fecha_Ingreso
FROM PACIENTES JOIN Ingresos ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE INGRESOS.Fecha_Ingreso BETWEEN '1-1-2008' AND '12-31-2008'

--2. Se requiere saber el nombre y apellidos del primer paciente ingresado en 2009
SELECT TOP 1 Nombre_Paciente, Apellidos_Paciente, Fecha_Ingreso
FROM PACIENTES JOIN Ingresos ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE INGRESOS.Fecha_Ingreso BETWEEN '1-1-2009' AND '12-31-2009'
ORDER BY Fecha_Ingreso ASC

--3. Se requiere saber el nombre y apellidos de los �ltimos 3 pacientes ingresados en 2010
SELECT TOP 3 Nombre_Paciente, Apellidos_Paciente, Fecha_Ingreso
FROM PACIENTES JOIN Ingresos ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE INGRESOS.Fecha_Ingreso BETWEEN '1-1-2010' AND '12-31-2010'
ORDER BY Fecha_Ingreso DESC

--4. Se requiere saber el nombre y apellidos de los pacientes nacidos antes del 1950 y fueron ingresados entre 2009 y 2010
SELECT Nombre_Paciente, Apellidos_Paciente, Fecha_Nacimiento, Fecha_Ingreso
FROM PACIENTES JOIN Ingresos ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE INGRESOS.Fecha_Ingreso BETWEEN '1-1-2009' AND '12-31-2010'  AND Fecha_Nacimiento <'1-1-1950'
ORDER BY Fecha_Nacimiento ASC

--5. Se requiere saber el nombre y apellidos de los pacientes nacidos en Alcorcon que no hayan sido ingresados en una cama A
SELECT Nombre_Paciente, Apellidos_Paciente, Poblaci�n, Cama
FROM PACIENTES JOIN Ingresos ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE Poblaci�n = 'Alcorcon' AND INGRESOS.Cama not like 'A'

--6. Se requiere saber el nombre y apellidos de los pacientes nacidos en Madrid despu�s de 1970 atendidos por un m�dico que su nombre  no empiece por S
SELECT Nombre_Paciente, Apellidos_Paciente, Poblaci�n, Fecha_Nacimiento, Nombre_M�dico
FROM PACIENTES
JOIN INGRESOS ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
Where Poblaci�n = 'Madrid' and Fecha_Nacimiento >'12-31-1970' and Nombre_M�dico not like 'S%'

--7. Se requiere saber el nombre y apellidos de los pacientes cuyo n�mero tel�fonico inicie con 914 y no hayan sido ingresados entre junio y julio 2010
SELECT Nombre_Paciente, Apellidos_Paciente, Tel�fono_Paciente, Fecha_Ingreso
FROM PACIENTES
JOIN INGRESOS ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE Tel�fono_Paciente like '914%' AND Fecha_Ingreso not between '6-1-2010' and '7-31-2010'

--8. Se requiere saber la cantidad de pacientes que han sido ingresados en la habitaci�n 201
SELECT COUNT (*) AS PACIENTES_que_han_estado_en_la_habitacion201
FROM PACIENTES
JOIN INGRESOS ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
WHERE Habitaci�n = 201

--9. Se requiere saber el nombre y apellidos de los pacientes con una R en sus apellido atendidos por un m�dico cuyo nombre inicie por S
SELECT Nombre_Paciente, Apellidos_Paciente, Nombre_M�dico
FROM PACIENTES
JOIN INGRESOS ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Apellidos_Paciente like '%R%' and Nombre_M�dico like 'S%'

--10. Se requiere saber  todos los pacientes ingresados en 2008 y los m�dicos que los atendieron
SELECT Nombre_Paciente, Apellidos_Paciente, Fecha_Ingreso, Nombre_M�dico, Apellidos_M�dico
FROM PACIENTES
JOIN INGRESOS ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Fecha_Ingreso between '1-1-2008' and '12-31-2008'

--Consultas tabla Ingresos

--11. Se requiere saber la habitaci�n en la que estuvieron hospedados los Pacientes atentidos por Sebastian Gutierrez O Juana Moreno
SELECT Habitaci�n, Nombre_Paciente, Apellidos_Paciente, Nombre_M�dico, Apellidos_M�dico
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Nombre_M�dico ='Sebastian' or Nombre_M�dico = 'Juana'.

--12. Se requiere saber toda la informaci�n de los m�dicos que ingresaron pacientes en la habitaci�n 204
SELECT Habitaci�n ,M�DICOS.C�digo_M�dico, Nombre_M�dico, Apellidos_M�dico, Especialidad
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Habitaci�n = 204

--13. Se requiere contar la cantidad de pacientes ingresados en 2010 por fecha de ingreso
SELECT Fecha_Ingreso, COUNT(*) as  Pacientes2010 
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Fecha_ingreso between '1-1-2010' and '12-31-2010'
group by Fecha_Ingreso

--14. Se requiere saber toda la informaci�n del ingreso #25
SELECT *
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE N�_Ingreso = 25

--15. Se requiere saber toda la informaci�n de los ingresos en una cama B que no fueron en 2010
SELECT *
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Cama = 'b' and Fecha_Ingreso not between '1-1-2010' and '12-31-2010'

--16. Se requiere saber toda la informaci�n de los ingresos en una habitaci�n del primer cuarto piso
SELECT *
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Habitaci�n like '4%'

--17. Se requiere saber toda la informaci�n de los ingresos que no son del m�dico Sebastian ni de Carlos 
SELECT *
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Nombre_M�dico not in ('Sebastian' , 'Carlos')

--18. Se requiere saber los ingresos que fueron en habitaciones distintas y los pacientes que fueron atendidos
SELECT Distinct Habitaci�n, Nombre_M�dico, Apellidos_Paciente
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico

--19. Se requiere saber los ingresos que se hicieron en Habitaciones del 3er Piso en Madrid
SELECT * 
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
WHERE Habitaci�n LIKE '3%' AND Poblaci�n = 'MADRID'

--20. Se requiere saber la fecha en la que se ingres� al primer paciente
SELECT top 1  Fecha_Ingreso, Nombre_Paciente, Apellidos_Paciente
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
Group by fecha_ingreso, Nombre_Paciente, Apellidos_Paciente

--Consultas tabla medicos

--21. Se necesita saber cuales m�dicos NO trabajaron en 2010
SELECT Nombre_M�dico, Apellidos_M�dico,	Especialidad, Fecha_Ingreso
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
WHERE Fecha_Ingreso NOT BETWEEN '1-1-2010' AND '12-31-2010'

--22. Se necesita saber cuales m�dicos trabajaron en 2008 
SELECT Nombre_M�dico, Apellidos_M�dico,	Especialidad, Fecha_Ingreso
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
WHERE Fecha_Ingreso BETWEEN '1-1-2008' AND '12-31-2008' 

--23. Se necesita saber cuantos pacientes ingres� cada medico
SELECT COUNT (M�dicos.C�digo_M�dico) as cantidad_de_pacientes_ingresados_por_medico , Nombre_M�dico, Apellidos_M�dico,	Especialidad
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
GROUP BY M�DICOS.C�digo_M�dico, Nombre_M�dico, Apellidos_M�dico,	Especialidad

--24. Se necesita saber cuantos medicos generales hay
SELECT COUNT ( distinct Especialidad) as cantidad_de_medicos_general, Nombre_M�dico, Apellidos_M�dico,	Especialidad
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
where Especialidad = 'General'
GROUP BY Nombre_M�dico, Apellidos_M�dico,	Especialidad

--25. A cuantos pacientes atendi� Sebastian
SELECT COUNT ( Nombre_Paciente) as cantidad_de_pacientes_atendido_por_Sebastian, Nombre_M�dico, Apellidos_M�dico,	Especialidad
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
Where Nombre_M�dico = 'Sebastian'
GROUP BY  Nombre_M�dico, Apellidos_M�dico,	Especialidad

--26. Se necesita saber cuales Medicos atendieron personas de Mostoles
SELECT Nombre_M�dico, Apellidos_M�dico,	Especialidad, Nombre_Paciente, Apellidos_Paciente, Poblaci�n
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
Where Poblaci�n = 'Mostoles'

--27. Se necesita saber el codigo del medico que atendi� a Loreto o a Monica
SELECT M�dicos.C�digo_M�dico, Nombre_Paciente, Apellidos_Paciente
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
Where Nombre_Paciente in ('Loreto', 'Monica')

--28. Se necesita cuando trabaj� el m�dico Sebastian
SELECT Fecha_Ingreso, Nombre_M�dico, Apellidos_M�dico
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
WHERE Nombre_M�dico LIKE '%SEBASTIAN%'

--29. Se necesita saber todo acerca de los medicos que han atendido pacientes  que su nombre empieza por J
SELECT *
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
WHERE Nombre_Paciente LIKE 'J%'

--30. Se necesita saber todo acerca de los m�dicos que han tenido pacientes nacidos despues de 1969
SELECT *
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
WHERE Fecha_Nacimiento >= '1-1-1970'

--HAVING
--31. Se necesita saber quienes atendieron a m�s de un paciente
SELECT COUNT (M�dicos.C�digo_M�dico) as cantidad_de_pacientes_ingresados_por_medico , Nombre_M�dico, Apellidos_M�dico,	Especialidad
FROM M�DICOS
JOIN INGRESOS ON M�DICOS.C�digo_M�dico = INGRESOS.C�digo_M�dico
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
GROUP BY M�DICOS.C�digo_M�dico, Nombre_M�dico, Apellidos_M�dico,	Especialidad
HAVING COUNT(M�dicos.C�digo_M�dico) > 1

--32. Se requiere saber a cuantas habitaciones entr� m�s de un paciente
SELECT COUNT ( Habitaci�n) AS Habitaciones_con_m�s_de_un_Paciente, Habitaci�n
FROM INGRESOS
JOIN PACIENTES ON INGRESOS.C�digo_Paciente = PACIENTES.C�digo_Paciente
JOIN M�DICOS ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
GROUP BY Habitaci�n, Habitaci�n
HAVING COUNT(Habitaci�n) >1

--33. 
SELECT COUNT (POBLACI�N) AS POBLACI�N_CON_M�S_DE_4_PACIENTES, Poblaci�n
FROM PACIENTES
JOIN INGRESOS ON PACIENTES.C�digo_Paciente = INGRESOS.C�digo_Paciente
JOIN M�dicos ON INGRESOS.C�digo_M�dico = M�DICOS.C�digo_M�dico
GROUP BY Poblaci�n, Poblaci�n
HAVING COUNT (POBLACI�N) > 4
