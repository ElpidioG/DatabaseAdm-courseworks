--Voy a crear una nueva base de datos--
CREATE DATABASE Concesionarios
--Voy a crear las tablas que estaran en la base de datos--
CREATE TABLE Clientes
(C�digo_Cliente int NOT NULL, Nombre_Cliente varchar (50), Apellidos_Cliente varchar (50), Direcci�n_Cliente varchar (50), Poblaci�n varchar (50), C�digo_Postal int, Provincia varchar (50), Tel�fono varchar (15), Fecha_Nacimiento date);
CREATE TABLE Coches
(Matricula varchar (50) NOT NULL, Marca varchar (50), Modelo varchar (50), Color varchar (50), Precio varchar (50), Extras_Instalados varchar (80));
CREATE TABLE Revisiones
(N�_Revisi�n int identity NOT NULL, Cambio_Aceite bit, Cambio_Filtro bit, Revisi�n_Frenos bit, Otros varchar (80));
--Voy a agregar los registros en la tabla Clientes--
INSERT INTO Clientes (C�digo_Cliente, Nombre_Cliente, Apellidos_Cliente, Direcci�n_Cliente, Poblaci�n, C�digo_Postal, Provincia, Tel�fono, Fecha_Nacimiento)
VALUES
(100, 'Antonio', 'Garc�a P�rez', 'Astilleros, 3', 'Valencia', 46011, 'Valencia', 963689621, '1960/08/15'),
(101, 'Carlos', 'P�rez Ru�z', 'Magallanes, 21', 'Utiel', 46300, 'Valencia', 962485147, '1958/04/26'),
(105, 'Luis', 'Rodr�guez M�s', 'Juan de Mena, 11', 'Gand�a', 46700, 'Valencia', 962965478, '1961/03/30'),
(112, 'Jaime', 'Juangr�n Sornes', 'Balmes, 21', 'Valencia', 46014, 'Valencia', 963684596, '1968/01/31'),
(225, 'Alfonso', 'Prats Montolla', 'S�neca, 23', 'Sagunto', 46500, 'Valencia', 963547852, '1969/04/28'),
(260, 'Jos�', 'Navarro Lard', 'R�o Segura, 14', 'Valencia', 46002, 'Valencia', 963874569, '1964/05/15'),
(289, 'Elisa', '�beda Sans�n', 'Valencia, 4', 'Sagunto', 46500, 'Valencia', 963547812, '1962/07/10'),
(352, 'Eva', 'San Mart�n', 'Villafranca, 34', 'Alzira', 46600, 'Valencia', 962401589, '1965/08/12'),
(365, 'Gerardo', 'Hern�ndez Luis', 'Salinas, 8', 'Valencia', 46002, 'Valencia', 963589621, '1965/01/02'),
(390, 'Carlos', 'Prats Ru�z', 'Ercilla, 8', 'Valencia', 46005, 'Valencia', 963589654, '1967/05/03'),
(810, 'Lourdes', 'Oliver Peris', 'Gran V�a, 34', 'Valencia', 46007, 'Valencia', 963587412, '1964/06/25'),
(822, 'Sergio', 'Larred Navas', 'Blasco Ib��ez, 65', 'Valencia', 46005, 'Valencia', 963589621, '1967/12/25'),
(860, 'Joaqu�n', '�rboles Onsins', 'Gand�a, 8', 'X�tiva', 46800, 'Valencia', 963758963, '1969/04/05'),
(861, 'Joaqu�n', '�rboles Onsins', 'Gand�a, 8', 'X�tiva', 46800, 'Valencia', 963758963, '1969/04/05');
--Voy a agregar el campo Codigo Cliente a la tabla Coches--
ALTER TABLE COCHES
ADD C�digo_Cliente int;
--Voy a agregar los registros en la tabla Coches--
INSERT INTO Coches (Matricula, Marca, Modelo, Color, Precio, Extras_Instalados, C�digo_Cliente)
VALUES
('V2360OX', 'Opel', 'Corsa 1.2 Sport', 'Azul', 21000, 'Antena El�ctrica', 100),
('V1O1OPB', 'Ford', 'Probe 2.0 16V', 'Blanco', 28600, null, 101),
('V4578OB', 'Ford', 'Orion 1.8 Ghia', 'Negro', 26000, 'Aire Acondicionado', 105),
('V7648OU', 'Citroen', 'Xantia 16V', 'Negro', 24800, 'Airbag', 225),
('V3543NC', 'Ford', 'Escort 1.6 Ghia', 'Rojo', 25000, null, 260),
('V7632NX', 'Citroen', 'Zx Turbo-D', 'Rojo', 28000, 'Aire Acondicionado', 289),
('V8018LJ', 'Ford', 'Fiesta 1.4 CLX', 'Azul', 19500, 'Elevalunas El�ctricos', 352),
('V2565NB', 'Renault', 'Clio 1.7 S', 'Blanco', 21000, null, 390),
('V7642OU', 'Ford', 'Mondeo 1.8 GLX', 'Blanco', 31000, null, 810),
('V1234LC', 'Audi', '100 2.3', 'Verde', 35100, 'Climatizador', 822),
('V9834LH', 'Peugeot', '205 GTI', 'Rojo', 24500, null, 860);
--Voy a agregar el campo Matricula a la tabla Revisiones--
ALTER TABLE Revisiones
ADD Matricula varchar (50);
--Voy a agregar los registros en la tabla Revisiones--
INSERT INTO Revisiones (Cambio_Aceite, Cambio_Filtro, Revisi�n_Frenos, Otros, Matricula)
VALUES
(1, 0, 0, 'Revisar luces', 'V7632NX'),
(1, 1, 0, 'Cambiar limpias', 'V7632NX'),
(0, 1, 1, 'Arreglar alarma', 'V4578OB'),
(0, 1, 1, 'Ajustar tablero', 'V2360OX'),
(1, 1, 1, 'Cambiar limpias, Revisar luces', 'V2565NB'),
(0, 0, 1, 'Cambiar luz interior', 'V7648OU'),
(1, 1, 0, null, 'V2565NB'),
(0, 0, 0, null, 'V8018LJ'),
(1, 0, 1, 'Regular encendido', 'V3543NC'),
(0, 1, 0, 'Reparar puerta delantera', 'V8018LJ'),
(0, 0, 0, null, 'V3543NC'),
(1, 1, 1, null, 'V1234LC'),
(0, 1, 0, 'Cambiar limpias', 'V9834LH'),
(0, 1, 0, null, 'V1010PB');
