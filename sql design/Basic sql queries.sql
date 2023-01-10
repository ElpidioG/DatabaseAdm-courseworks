--a) Visualizar �nicamente los campos Matr�cula, Marca y Modelo de los coches vendidos, ordenados de forma ascendente por la matr�cula 
SELECT Matricula, Marca, Modelo
FROM Coches
ORDER BY Matricula ASC
 

--b) Visualizar toda la informaci�n de los coches vendidos de la marca Ford
SELECT *
FROM COCHES
WHERE MARCA = 'FORD'
 

--c) Visualizar toda la informaci�n de los coches vendidos de la marca Ford con un precio superior a 15600.
SELECT *
FROM COCHES
WHERE MARCA = 'FORD' AND PRECIO > 15600
 

--d) Visualizar todos los clientes que hayan comprado Ford o Citroen 
SELECT Nombre_Cliente, Marca
FROM CLIENTES
JOIN Coches ON Clientes.C�digo_Cliente = Coches.C�digo_Cliente
WHERE Marca = 'Ford' OR MARCA = 'Citroen'
 

--e) Visualizar la Matr�cula y el modelo de los coches que tengan que re`alizar Cambio de aceite y Cambio de filtro 
SELECT COCHES.Matricula, Modelo
FROM Coches
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Cambio_Aceite = 0 AND Cambio_Filtro = 0

 
--f) Visualizar los clientes que hayan comprado un Ford y tenga alg�n extra
SELECT NOMBRE_CLIENTE, Extras_Instalados
FROM Clientes
JOIN Coches ON Clientes.C�digo_Cliente = Coches.C�digo_Cliente
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Marca = 'Ford' And NOT Extras_Instalados  = 'NULL'


--g) Visualizar aquellos coches (marca y modelo) que tienen que hacer Cambio de Aceite y Cambio de filtro y Cambio de frenos 
SELECT MARCA, MODELO
FROM Coches
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Cambio_Aceite = 0 AND Cambio_Filtro = 0 AND Revisi�n_Frenos = 0

 
--h) Visualizar aquellos coches (marca y modelo) que tienen que hacer Cambio de Aceite pero no tienen que hacer Cambio de frenos 
SELECT MARCA, MODELO
FROM Coches
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Cambio_Aceite = 0 AND Revisi�n_Frenos = 1

 
--i) Visualizar aquellos coches (marca y modelo) que no tienen que hacer ning�n tipo de cambio 
SELECT MARCA, MODELO
FROM Coches
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Cambio_Aceite = 1 AND Cambio_Filtro = 1 AND Revisi�n_Frenos = 1

 
--j) Calcular qu� n�mero de coches tiene que realizar Cambio de aceite 
SELECT COUNT (*) AS COCHES_que_necesitan_cambio_de_aceite
FROM COCHES
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Cambio_Aceite = 0 


--k) Calcular qu� n�mero de coches no tiene que realizar Revisi�n de frenos 
SELECT COUNT (*) AS COCHES_que_no_necesitan_revision_de_frenos
FROM COCHES
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Revisi�n_Frenos = 1 

 
--l) Indicar que coches tienen que Cambiar los limpias vidrios.
SELECT *
FROM COCHES
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Otros LIKE 'Cambiar limpias%'

 
--m) Indicar el precio de venta m�s caro en cada marca .
SELECT MAX (Precio) AS precio_de_venta_m�s_caro, Marca
FROM Coches
GROUP BY Marca
 
--n) Indicar cu�ntos clientes compraron un coche de color Rojo 
SELECT COUNT (*) AS Clientes_Coche_Rojo
FROM Clientes
JOIN Coches ON Clientes.C�digo_Cliente = Coches.C�digo_Cliente
WHERE Color = 'rojo'

 
--o) Visualizar el nombre del cliente, la marca, y la revisi�n que se ha de realiza para el coche con matr�cula V4578OB 
SELECT Nombre_Cliente, Marca, Cambio_Aceite
FROM Clientes
JOIN Coches ON Clientes.C�digo_Cliente = Coches.C�digo_Cliente
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE Coches.Matricula = 'V4578OB'

 
--p) Indicar que marcas y modelos de coches vendidos tienen extras, as� como el nombre del propietario 
SELECT Marca, Modelo, NOMBRE_CLIENTE, Extras_Instalados
FROM Clientes
JOIN Coches ON Clientes.C�digo_Cliente = Coches.C�digo_Cliente
JOIN Revisiones ON Coches.Matricula = Revisiones.Matricula
WHERE NOT Extras_Instalados = 'NULL'
 
--q) Indicar cuantos modelos hay de cada marca 
SELECT COUNT (Modelo) AS Modelos_por_marca, Marca
FROM COCHES
GROUP BY Marca
 
--r) Calcular a cu�ntos ascendieron las ventas de la marca Ford 

SELECT SUM (PRECIO) AS TOTAL_FORD
FROM Coches
WHERE MARCA = 'FORD'

 
--s) Se desea generar un campo calculado en la tabla VEH�CULOS VENDIDOS que muestre el precio del coche en pesetas.
SELECT MATRICULA, MARCA, MODELO, PRECIO * 166 AS PRECIO_EN_PESETAS
FROM Coches

 
--t) Indicar el cliente o clientes m�s j�venes 
SELECT TOP 1 (Fecha_Nacimiento), (Nombre_Cliente)
FROM Clientes
ORDER BY Fecha_Nacimiento DESC
 
--u) En que color y de qu� modelo se vendi� el coche m�s caro de la marca Ford.
SELECT TOP 1 Color, Modelo, Precio
FROM Coches
WHERE Marca = 'Ford' 
GROUP BY Color, Modelo, Precio
ORDER BY MAX(PRECIO) DESC;

