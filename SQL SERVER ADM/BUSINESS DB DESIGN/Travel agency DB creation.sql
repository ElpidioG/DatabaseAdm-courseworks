
Create database AgenciaDeViajes
use AgenciaDeViajes

create table Clientes
( IDcliente int NOT NULL primary key,
Cedula varchar(30),
Nombre Varchar(30),
Apellido varchar (30),
CodigoPais varchar(10),
Ciudad_Estado varchar (30),
Pais varchar (30),
CuentaCorriente varchar(30),
Telefono varchar(14),
Email varchar (60) )
insert into Clientes values
(0001, '0010883191-8', 'Gladys', 'Diaz', '809', 'Santo Domingo', 'Republica Dominicana', '4587412562', '809-560-1007', 'FilomenoRodriguezSerrano@dayrep.com'),	
(0002, '0010562141-7', 'Alfredo', 'Quezada', '899', 'Madrid', 'España', '54126584323', '521-456-8512', 'alfredo2u8@gmail.com'),
(0003, '0010123145-6', 'Maria', 'Quezada', '899', 'Madrid', 'España',   '55412367484', '564-874-5236', 'quezamariu07@gmail.com'),
(0004, '0010345141-4', 'Richard', 'Strunk', '900', 'New York', 'Estados Unidos', '54126580393', '555-111-8512', 'richardstrunk10298@gmail.com'),
(0005, '0010960145-2', 'Steve', 'Mardis', '900', 'Alabama', 'Estados Unidos',   '55418399874', '800-874-5236', 'stevemardis07@gmail.com'),
(0006, '0010562351-9', 'Edward', 'Odom', '700', 'Genova', 'Italia', '54128397963', '708-456-8512', 'edwardodon829@gmail.com'),
(0007, '0010507145-7', 'Rachel', 'Turner', '700', 'Milan', 'Italia',   '55419059874', '708-874-5236', 'rachturn111@gmail.com'),
(0008, '0020507245-5', 'Duncan', 'Patriots', '604', 'Cancun', 'Mexico', '55419059875', '222-154-1800', 'dunparti09@gmail.com'),
(0009, '0050507545-3', 'Steven', 'Macizo', '604', 'Merida', 'Mexico', '55419059889', '222-154-1450', 'stevemac0923@gmail.com'),
(0010, '0070507565-5', 'Bengal', 'Tigre', '604', 'Guadalajara', 'Mexico', '55419059000', '222-135-1843', 'BengalTigre000@gmail.com'),
(0011, '0080507345-7', 'Jonathan', 'Riccobene', '604', 'Tijuana', 'Mexico', '77419059874', '222-300-8956', 'kilymaton@gmail.com'),
(0012, '0000507545-1', 'Miguel', 'Pancorbo', '809', 'Santiago', 'Republica Dominicana', '89519059874', '809-232-4512', 'kxspan01@gmail.com'),
(0013, '0020507164-5', 'Luis', 'Olivero', '809', 'Puerto Plata', 'Republica Dominicana', '78919059874', '809-777-7777', 'oliveroloraluis928@gmail.com'),
(0014, '0060507545-3', 'Juan', 'Nunez', '809', 'La Romana', 'Republica Dominicana','55418889874', '809-445-7676', 'juantavarez4802@gmail.com'),
(0015, '0030507567-8', 'Carlos', 'Bencosme','809', 'La Romana', 'Republica Dominicana','55419059955', '829-258-3325', 'carlitobenito0399@gmail.com'),
(16, '8970883191-0', 'Hernan', 'Montes', '700', 'Medellin', 'Colombia', '5552012562', '700-560-2107', 'hernmonuty78@dayrep.com'),
(17, '0870883191-9', 'Elpidio', 'Marquez', '809', 'Santo Domingo', 'Republica Dominicana', '8954441023', '849-222-5787', 'morningstarrd@dayrep.com'),
(18, '0040883191-5', 'Alondra', 'Almanzar', '700', 'Medellin', 'Colombia', '4587412562', '809-888-1111', 'Alondrag2039@dayrep.com'),
(19, '0090883191-5', 'Armando', 'Paredes', '809', 'Santo Domingo', 'Republica Dominicana', '4587412562', '809-933-8979', 'armanditopanchito3@dayrep.com'),
(20, '7770883191-7', 'Bob', 'Squarepants', '900', 'Hawaii', 'Estados Unidos', '4583332562', '800-895-4410', 'bobesponja12@dayrep.com')


create table Actividades

( IDactividades int not null primary key,
NombreActividad varchar (79), Lugar varchar (79),
CostoPPersona decimal(6,2), Descripcion varchar (100))


Insert  into Actividades values ('1','Parque Acuático', 'OceanWorld', 70, 'Parque de atracciones acuático para toda la familia')
Insert  into Actividades values ('2','Parque de Atracciones', 'Universal Studios', 140, 'Parque de atracciones para toda la familia ')
Insert  into Actividades values ('3','Parque Jurásico', 'Jurassic Quest', 90, 'Parque temático prehistórico para toda la familia')
Insert  into Actividades values ('4','Museo de Historia', 'Museo de Las Casas Reales', 30, 'Visita al Museo de las Casas Reales en Santo Domingo')
Insert  into Actividades values ('5','Carrera de Buggie','Dunas de Baní', 130, 'Carreras de Buggie en las Dunas de Baní')
Insert  into Actividades values ('6','Cayak', 'Playa Bondi', 120, 'Cayak en las hermosas playas de Australia')
Insert  into Actividades values ('7','Esquí', 'Los Alpes Suizos', 190, 'Aprende a esquiar en los famosos Alpes Suizos')
Insert  into Actividades values ('8','Buceo', 'Cayo Arena', 200, 'Llega a las profundidades del mar en el hermoso Cayo Arena')
Insert  into Actividades values ('9','Paracaidismo', 'Skydive Dubai', 250, 'Lanza toda tu adrenalina al aire en Skydive Dubai')
Insert  into Actividades values ('10','Montañismo', 'Pico Duarte', 120, 'Alcanza la cima del Pico Duarte')
Insert  into Actividades values ('11','Tirolesa', 'Sky Adventures Monteverde Park', 85, 'Recorre un bello paisaje en la tirolesa de Monteverde')
Insert  into Actividades values ('12','Parapente', 'Parapente Fino Fly',110 , 'Lanzate en parapente mientras miras un hermoso paisaje')
Insert  into Actividades values ('13','Teléferico', 'Sistema De Teleférico Mukumbarí', 100, 'Sube esta gran montaña con nuestro teléferico y disfruta las vistas')
Insert  into Actividades values ('14','Montaña en Bicicleta', 'Cotopaxi', 115, 'Escala Cotopaxi en bicicleta')
Insert  into Actividades values ('15','Jet-ski', 'Playa de Santa Mónica', 140, 'Navega la playa de Santa Mónica a 20 Mph en nuestros Jet-Ski')
Insert  into Actividades values ('16','Surf', 'Playa Waimanalo', 120, 'Surfea como siempre quisiste en la Playa Waimanalo de Hawai')
Insert  into Actividades values ('17','Snowboarding', 'Montañas de Tordrillo', 175, 'Aprende a hacer Snowboarding en las montañas de Alaska')
Insert  into Actividades values ('18','Monumentos Históricas', 'Torre Eiffel', 70, 'Visita la hermosa Torre Eiffel en Paris, Francia')
Insert  into Actividades values ('19','Viaje en Barco', 'Bayahibe', 112, 'Viaja en lanchas y barcos con destino hacia la Isla Saona')
Insert  into Actividades values ('20','Escalaje de Montaña', 'Monte Tubcal', 98, 'Escala el Monte Tubcal y mira el hermoso paisaje desde la cima')


create table Viajes

(IDViaje int,Origen varchar (100), Destino varchar (100), Aerolinea_Ida varchar(50), 
FechaSalida datetime, Aterrizaje_Llegada datetime, Aerolinea_Vuelta varchar(50), FechaRegreso datetime, Aterrizaje_Regreso datetime,
Precio decimal(6,2), IDactividades int)

Insert  into Viajes values ('1','Aeropuerto Internacional Jorge Chávez Lima', 'Aeropuerto Internacional Gregorio Luperón','Copa Airlines','11/12/2020 11:30:00', '11/12/2020 15:05:00','Delta Airlines','11/16/2020 05:35:00','11/16/2020 08:15:00', 330, '1')

Insert  into Viajes values ('2','Aeropuerto Internacional Luis Muñoz Marín', 'Aeropuerto Internacional de Fort Lauderdale-Hollywood','Delta Airlines','01/27/2021 08:00:00', '01/27/2021 10:10:00','Delta Airlines','02/08/2021 07:00:00','02/08/2021 09:15:00', 230, '2')

Insert  into Viajes values ('3','Aeropuerto Josep Tarradellas Barcelona-El Prat', 'Aeropuerto Internacional de Dallas-Fort Worth','Copa Airlines', '01/27/2021 20:00:00', '01/28/2021 03:10:00','Copa Airlines', '02/06/2021 15:30:00',  '02/06/2021 03:00:00',520, '3')

Insert  into Viajes values ('4','Aeropuerto Internacional Arturo Merino Benítez (SCL)', 'Aeropuerto Internacional de Las Américas','Copa Airlines', '04/27/2020 04:00:00', '04/27/2020 10:30:00','Copa Airlines',  '04/30/2020 03:30:00',  '04/30/2020 09:00:00',390, '4')

Insert  into Viajes values ('5','Aeropuerto Internacional Ezeiza','Aeropuerto Internacional de Las Américas','Delta Airlines', '08/12/2021 06:00:00', '08/12/2021 12:30:00','Delta Airlines', '08/16/2021 04:30:00',  '08/16/2021 10:30:00', 400, '5')

Insert  into Viajes values ('6','Aeropuerto Internacional de Wellington', 'Aeropuerto Internacional Kingsford Smith','Spirit Airlines','10/12/2021 02:00:00', '10/12/2021 04:00:00','Spirit Airlines', '10/19/2021 04:30:00',  '10/19/2021 06:30:00', 200, '6')

Insert  into Viajes values ('7','Aeropuerto Internacional Juan Santamaría', 'Aeropuerto de Zúrich','Copa Airlines', '08/06/2020 02:00:00', '08/06/2020 16:30:00','Copa Airlines',  '08/11/2020 15:30:00',  '08/12/2020 11:00:00', 900, '7')

Insert  into Viajes values ('8','Aeropuerto Internacional de Guadalajara Miguel Hidalgo y Costilla', 'Aeropuerto Internacional Gregorio Luperón','Jetblue Airways', '05/10/2020 06:00:00', '05/10/2020 11:00:00','Fly Emirates Airlines',  '05/16/2020  02:30:00',  '05/16/2020 08:00:00',400, '8')

Insert  into Viajes values ('9','Aeropuerto de Madrid-Barajas Adolfo Suárez', 'Aeropuerto Internacional de Dubái','Fly Emirates Airlines', '12/25/2021 06:00:00', '12/25/2021 13:00:00','Fly Emirates Airlines', '01/05/2022 02:30:00',  '01/05/2022 10:00:00', 900,'9')

Insert  into Viajes values ('10','Aeropuerto Internacional Luis Muñoz Marín', 'Aeropuerto Internacional del Cibao','Copa Airlines', '08/12/2020 08:00:00', '08/12/2020 09:30:00','Copa Airlines',  '08/18/2020 07:00:00',  '08/18/2020 09:00:00',980,'10')

Insert  into Viajes values ('11','Aeropuerto Internacional de Carrasco', 'Aeropuerto Internacional Juan Santamaría ','Copa Airlines', '04/28/2020 13:00:00', '04/28/2020 22:00:00','Delta Airlines', '05/08/2020 00:00:00',  '05/08/2020 09:00:00', 500,'11')

Insert  into Viajes values ('12','Aeropuerto Internacional de Fort Lauderdale-Hollywood', 'Aeropuerto Internacional del Cibao','Copa Airlines', '12/20/2021 09:00:00', '12/20/2021 11:30:00','Delta Airlines', '12/29/2021 8:00:00',  '12/29/2021 11:00:00', 420,'12')

Insert  into Viajes values ('13','Aeropuerto Internacional Arturo Merino Benítez (SCL)', 'Aeropuerto Nacional Alberto Carnevalli', 'Delta Airlines','02/18/2021 06:00:00', '02/18/2021 09:30:00', 'Delta Airlines', '02/25/2021 07:00:00',  '02/25/2021 10:00:00',306,'13')

Insert  into Viajes values ('14','Aeropuerto Las Americas', 'Cotopaxi International Airport','Delta Airlines', '10/11/2020 06:00:00', '10/11/2020 12:00:00', 'Delta Airlines','10/16/2020 01:00:00',  '10/16/2020 07:00:00', 700,'14')

Insert  into Viajes values ('15','El Dorado International Airport Luis Carlos Galán Sarmiento', 'Los Angeles International Airport','Delta Airlines', '08/12/2021 06:00:00', '08/12/2021 12:30:00','Delta Airlines', '08/18/2021 01:00:00',  '08/18/2021 08:00:00', 800,'15')

Insert  into Viajes values ('16','Alfonso Bonilla Aragón International Airport', 'Daniel K. Inouye International Airport','Delta Airlines', '05/28/2020 16:00:00', '05/28/2020 21:30:00','Delta Airlines', '06/07/2020 04:30:00',  '06/07/2020 10:00:00',560, '16')

Insert  into Viajes values ('17','José María Córdova International Airport', 'Anchorage Airport','Delta Airlines', '12/20/2020 15:00:00', '12/20/2020 20:30:00', 'Delta Airlines','12/27/2020 02:30:00',  '12/27/2020 08:00:00', 900,'17' )

Insert  into Viajes values ('18','Josep Tarradellas Barcelona-El Prat Airport', 'Paris Charles de Gaulle Airport','Spirit Airlines', '02/11/2020 14:00:00', '02/11/2020 15:30:00','Spirit Airlines',  '02/18/2020 08:30:00',  '02/18/2020 10:00:00',430,'18' )

Insert  into Viajes values ('19','Silvio Pettirossi International Airport', 'La Romana International Airport','Delta Airlines',  '06/15/2020 10:00:00', '06/15/2020 15:00:00', 'Fly Emirates Airlines','06/19/2020 00:00:00',  '06/19/2020 05:00:00',645, '19')

Insert  into Viajes values ('20','Josep Tarradellas Barcelona-El Prat Airport', 'Marrakesh Menara Airport','Copa Airlines', '03/12/2021 12:00:00', '03/12/2021 14:30:00','Copa Airlines',  '03/20/2021 09:30:00',  '03/20/2021 12:00:00',320,'20')
create table Hoteles
(
ID_Hoteles INT identity (1,1) Primary Key,
Nombre VARCHAR (50),
Categoria VARCHAR (60),
Teléfono VARCHAR (50),
Ciudad VARCHAR (50),
Direccion VARCHAR (200),
Preciocomida decimal(6,2),
CodigoPostal VARCHAR (50),
Numhabitaindiv VARCHAR(50),
Numhabitadoble VARCHAR(50),
Descripción VARCHAR (150)
)
Insert into Hoteles values('Playabachata Resort', '5 estrellas', '8095461477', 'Puerto Plata', 'Bahia de Maimon, San Felipe de Puerto Plata', '15', '57000', '169','200', NULL)
Insert into Hoteles values('Four Seasons Resort Orlando at Walt Disney World', '5 estrellas', '4073137777', 'Florida', 'Dream Tree Blvd, Golden Oak, FL 32836, Estados Unidos', '51', '10100', '269','300', NULL)
Insert into Hoteles values('The Woodlands Resort', '4 estrellas', '2813671100', 'Texas', 'N Millbend Dr, The Woodlands, TX 77380, Estados Unidos', '14', '2301', '150', '190',NULL)
Insert into Hoteles values('JW Marriott Hotel', '5 estrellas', '8098071717', 'Santo Domingo', 'Winston Churchill Avenue No. 93, Santo Domingo', '14', '10501', '190', '220',NULL)
Insert into Hoteles values('Embassy Suites by Hilton', '4 estrellas', '8096850001', 'Santo Domingo', 'Silver Sun, Av. Tiradentes 32, Santo Domingo', '10', '10119', '100', '140',NULL)
Insert into Hoteles values('Park Hyatt Sydney', '5 estrellas', '292561234', 'Sydney', '7 Hickson Rd, The Rocks NSW 2000, Australia', '36', '2000', '200', '240',NULL)
Insert into Hoteles values('The Dolder Grand', '5 estrellas', '444566000', 'Zurich', 'Kurhausstrasse 65, 8032 Zürich, Suiza', '36', '8032', '180', '210',NULL)
Insert into Hoteles values('Armani Hotel', '5 estrellas', '97148883888', 'Dubai', 'Burj Khalifa - Sheikh Mohammed bin Rashid Blvd - Downtown Dubai - Dubai - Emiratos Árabes Unidos', '22', '418', '250', '300',NULL)
Insert into Hoteles values('Hodelpa Gran Almirante Hotel & Casino', '4 estrellas', '8095801992', 'Santiago de los Caballeros', 'Santiago De Los Caballeros', '10', '51000', '130', '190',NULL)
Insert into Hoteles values('Barceló San José', '5 estrellas', '50622202034', 'San Jose', 'Residencial El Robledal Diagonal 23 A San José La Uruca CR 10107, Diagonal 23A, San José, Costa Rica', '16', '10107', '200', '250',NULL)
Insert into Hoteles values('Hyatt Regency', '5 estrellas', '52999942', 'Merida', 'Av. Colon 344, Zona Paseo Montejo, Centro, 97000 Mérida, Yuc., México', '49', '1234', '180', '210',NULL)
Insert into Hoteles values('Hacienda San Agustin de Callo', '3 estrellas', '59332719160', 'Cotopaxi', 'Lasso, entrada a la subestación eléctrica de Lasso, Av 10 de Agosto, Hacienda Callo Mancheno 100150, Ecuador', '31', '100150', '10', '20',NULL)
Insert into Hoteles values('Sofitel Los Angeles at Beverly Hills', '4 estrellas', '310-278-5444', 'Los Angeles', 'Beverly Blvd, Los Angeles, CA 90048, Estados Unidos', '18', '8555', '150', '190',NULL)
Insert into Hoteles values('Alohilani Resort Waikiki Beach', '4 estrellas', '8089221233', 'Honolulu', 'Kalakaua Ave, Honolulu, HI 96815, Estados Unidos', '22', '2490', '180', '210',NULL)
Insert into Hoteles values('Alyeska Resort & Hotel Alyeska', '4 estrellas', '8008803880', 'Anchorage', 'Arlberg Ave, Girdwood, AK 99587, Estados Unidos', '15', '1000', '190', '220',NULL)
Insert into Hoteles values('Hôtel George-V', '5 estrellas', '33149527000', 'Paris', '31 Avenue George V, 75008 Paris, Francia', '67', '75008', '195', '240',NULL)
Insert into Hoteles values('Casa de Campo Resort and Villas', '5 estrellas', '8668184966', 'La Romana', 'Carretera La Romana - Higuey Hwy, La Romana', '11', '22000', '4', '7',NULL)
Insert into Hoteles values('Royal Mansour ', '5 estrellas', '212529808080', 'Marrakech', 'Rue Abou Abbas El Sebti، 40000, Marruecos', '106', '40000', '195', '240',NULL)

Create table NOMINA
(IDnomina int primary key,
FechaDePago varchar (10),
IdEmpleado int,
Sueldo decimal(10,2),
AFP decimal(10,2),
descuento decimal(10,2),
Horas_extras decimal(10,2), 
ISS decimal(10,2))
Insert into NOMINA  values (1, '09/30/20', 1, 18000.00, 516.60, null , 150.60, 100000.00)
Insert into NOMINA  values (2, '09/30/20', 2, 18000.00, 516.60, null, 150.60, 100000.00)
Insert into NOMINA  values (3, '09/30/20', 3, 70000, 2009.00, 6800.00, 479.30, 3000000.00)
Insert into NOMINA  values (4, '09/30/20', 4, 25000.00, 717.50, null, 177.00, 500000.00)
Insert into NOMINA  values (5, '09/30/20', 5, 23000.00, 660.10, null,162.90, 400000.00)
Insert into NOMINA  values (6, '09/30/20', 6, 25000.00, 717.50, null, 177.00, 505000.00)
Insert into NOMINA  values (7, '09/30/20', 7, 18000.00, 516.60, null, 150.60, 100000.00)
Insert into NOMINA  values (8, '09/30/20', 8, 20000, 574.00, null, 141.60, 650000.00)
Insert into NOMINA  values (9, '09/30/20', 9, 18000.00, 516.60, null, 150.60, 100000.00)
Insert into NOMINA  values (10, '09/30/20', 10, 18000.00, 516.60, null, 150.60, 100000.00)
Insert into NOMINA  values (11, '09/30/20', 11, 25000.00, 717.50, null, 177.00, 500000.00)
Insert into NOMINA  values (12, '09/30/20', 12, 30000.00, 861.00, 3000.00, 200.20, 650000.00)
Insert into NOMINA  values (13, '09/30/20', 13, 23000.00, 660.10, null, 162.90, 400000.00)
Insert into NOMINA  values (14, '09/30/20', 14, 30000.00, 861.00, null, 200.20, 650000.00)
Insert into NOMINA  values (15, '09/30/20', 15, 25000.00, 717.50, null, 177.00, 500000.00)

Create table Transporte
(
IDtransporte int primary key, 
Tipotransporte varchar(50),
Origen varchar(100),
Destino varchar(90),
FechaSalida Datetime,
FechaLlegada datetime,
Compañia varchar(50),
Precio decimal(5,2)

)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (1, 'Terrestre', 'Playabachata Resort', 'OceanWorld', '12/14/2020 10:00:00', '12/14/2020 18:30:00', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (2, 'Terrestre', 'Four Seasons Resort Orlando at Walt Disney World', 'Universal Studio', '01/29/2021 9:00:00', '01/29/2021 19:00:00', 'Busline', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (3, 'Terrestre', 'The Woodlands Resort', 'Jurassic Quest', '01/29/2021 10:00:00', '01/29/2021 18:20:00', 'Greyhound', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (4, 'Terrestre', 'JW Marriott Hotel', 'Museo de Las Casas Reales', '04/29/2020 10:00:00', '04/29/2020 19:00:00', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (5, 'Terrestre', 'Embassy Suites by Hilton', 'Dunas de Baní', '08/14/2021 9:00:00', '08/14/2021 19:00:00', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (6, 'Terrestre', 'Park Hyatt Sydney', 'Playa Bondi', '10/14/2021 10:00:00', '10/14/2021 19:00:00', 'Firefly express', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (7, 'Terrestre', 'The Dolder Grand', 'Los Alpes Suizos', '08/08/2020 10:00:00', '08/08/2020 18:00:00', 'CheckMyBus', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (8, 'Terrestre', 'Armani Hotel', 'Cayo Arena', '05/12/2020 11:00:00', '05/12/2020 19:00:00', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino,  FechaSalida, Fechallegada, Compañia, Precio)
values (9, 'Terrestre', 'Hodelpa Gran Almirante Hotel & Casino', 'Skydive Dubai', '12/27/2021 11:30:00', '12/27/2021 18:30:00', 'DotTransfers', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (10, 'Terrestre', 'Barceló San José', 'Pico Duarte', '8/14/2020 10:30:00', '8/14/2020 19:45', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (11, 'Terrestre', 'Hyatt Regency', 'Sky Adventures Monteverde Park', '04/30/2020 10:45:00', '04/30/2020 19:20:00', 'Bayexairporters', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (12, 'Terrestre', 'Hacienda San Agustin de Callo', 'Parapente Fino Fly',  '12/22/2021 09:30:00', '12/22/2021 19:30:00', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (13, 'Terrestre', 'Sofitel Los Angeles at Beverly Hills', 'Sistema De Teleférico Mukumbarí', '02/20/2020 10:20:00', '02/20/2020 19:10:00', 'Nexcon', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (14, 'Terrestre', 'Alohilani Resort Waikiki Beach', 'Cotopaxi', '10/13/2020 10:00:00', '10/13/2020 18:45:00', 'Porsevice', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (15, 'Terrestre', 'Alyeska Resort & Hotel Alyeska', 'Playa de Santa Mónica', '08/14/2020 10:00:00', '08/14/2020 19:00:00', 'Busline', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (16, 'Terrestre', 'Hôtel George-V', 'Playa Waimanalo', '05/30/2020 10:45:00', '05/30/2020 19:45:00', 'TheBus',  10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (17, 'Terrestre', 'Casa de Campo Resort and Villas', 'Montañas de Tordrillo', '12/22/2020 10:00:00', '12/22/2020 18:50:00', 'Alcan', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino,  FechaSalida, Fechallegada, Compañia, Precio)
values (18, 'Terrestre', 'Royal Mansour ', 'Torre Eiffel', '02/13/2020 11:00:00', '02/13/2020 19:00:00', 'Noctilien', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (19, 'Acuatico', 'Casa de Campo Resort and Villas', 'Bayahibe', '06/17/2020 10:00:00', '06/17/2020 19:00:00', 'Caribe tours', 10)
insert into Transporte (IDtransporte,Tipotransporte, Origen, Destino, FechaSalida, Fechallegada, Compañia, Precio)
values (20, 'Terrestre', 'Royal Mansou', 'Monte Tubcal', '03/14/2021 10:00:00', '03/14/2021 19:00:00', 'Supratours', 10)


Create table Contrato_Viaje
(
IDViaje int NOT NULL primary key,
IDcliente int NOT NULL,
IDempleado int NOT NULL,
ID_hoteles int  NULL,
ID_residencia int  null,
PrecioHotel int NULL,
IDtransporte int NOT NULL,
Fechainicial datetime NOT NULL,
fechafinal datetime NOT NULL,
FormaPago varchar(50) NOT NULL,
NumAdultos int NOT NULL,
NumNiños int NOT NULL

)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia, PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 1, 1, 1, 1,null, 240, 1, '11/12/2020 12:30:00', 'Efectivo' , '11/16/2020 09:00:00', 2, 3)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 2, 2, 2, 2,null, 1000, 2, '01/27/2021 08:00:00', 'Efectivo', '02/8/2021 10:00:00', 4, 6)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 3, 3, 3, 3,null, 230, 3,  '01/27/2021 20:00:00', 'Tarjeta', '02/07/2021 11:00:00', 2, 2)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia, PrecioHotel, IDtransporte,  Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 4, 4, 4, 4,null, 275, 4, '04/27/2020 04:00:00', 'Efectivo', '04/30/2020 10:00:00', 3, 5)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 5, 5, 5, 5,null, 205, 5, '08/12/2021 06:00:00', 'Efectivo', '08/16/2021 11:00:00', 1, 2)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 6, 6, 6, 6,null, 430,6, '10/12/2021 02:00:00', 'Efectivo', '10/19/2021 07:00:00', 5, 6)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 7, 7, 7, 7,null, 775, 7, '08/06/2022 02:00:00', 'Efectivo', '08/12/2022 12:00:00', 6, 9)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 8, 8, 8, 8,null, 200, 8, '05/10/2020 06:00:00', 'Tarjeta', '05/16/2020 09:00:00' , 2, 3)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 9, 9, 9, 9,null, 225, 9, '12/29/2021 06:00:00', 'Efectivo', '01/05/2022 11:00:00' , 4, 3)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 10, 10, 10, 10,null, 300, 10,  '08/12/2020 08:00:00', 'Tarjeta', '08/18/2020 10:00:00' , 3, 4)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 11, 11, 11, 11,null, 415, 11,  '04/28/2020 13:00:00', 'Tarjeta', '05/08/2020 10:30:00' , 5, 8)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 12, 12, 12, 12,null, 531, 12,  '12/20/2021 09:00:00', 'Tarjeta', '12/29/2021 12:30:00' , 4, 8)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 13, 13, 13, 13,null, 260, 13, '02/18/2020 06:00:00', 'Tarjeta', '02/25/2021 010:30:00' , 1, 3)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 14, 14, 14, 14,null, 415, 14,  '10/11/2020 06:00:00', 'Tarjeta' ,'10/16/2020 08:00:00' , 6, 7)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 15, 15, 15, 15,null, 200, 15, '08/12/2021 06:00:00', 'Efectivo', '08/18/2021 09:30:00' , 2, 5)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia, PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 16, 16, 1, 16,null, 1375, 16,  '05/28/2020 16:00:00', 'Tarjeta', '06/07/2020 11:30:00' , 8, 12)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia, PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 17, 17, 2, 17,null, 1500, 17,  '12/23/2020 15:00:00', 'Efectivo', '12/27/2020 9:45:00' , 4, 7)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 18, 18, 13, 18,1, 1900, 18, '02/11/2020 14:00:00', 'Efectivo', '02/18/2020 11:00:00' , 10, 12)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 19, 19, 4, NULL, 2,  2400, 19,  '06/15/2020 10:00:00', 'Tarjeta', '06/19/2020 06:00:00' , 3, 7)
insert into Contrato_Viaje (IDViaje, IDcliente, IDempleado, ID_hoteles, ID_residencia,  PrecioHotel, IDtransporte, Fechainicial, FormaPago, fechafinal, NumAdultos, NumNiños)
Values ( 20, 20, 5, NULL,3, 1900, 20, '03/15/2021 12:00:00', 'Tarjeta', '03/20/2021 13:30:00' , 5, 8)

create table empleados
(
IDempleado int NOT NULL primary key,
IDnomina int,
Cedula varchar(15),
Nombre Varchar (30),
Apellido varchar (30),
Cargo varchar (30),
Direccion varchar (150),
Ciudad varchar (50),
Nacionalidad varchar(30),
CodigoPostal int,
Telefono varchar(12),
Fnacimiento date,
Fcontratacion date,
Sueldo decimal (8,2)
)

insert into empleados values
(1, 1, '78945612301', 'Richard', 'Miller', 'Recepcionista', 'Arz Nouel 305', 'Santo Domingo Oeste', 'Venezolano', 10001,'809-521-5303', '09-09-1990', '02-12-2020', 18000),
(2, 2,'65632178965', 'Santiago', 'Matias', 'Recepcionista', 'Av Libertad 73', 'Santo Domingo Oeste', 'Dominicano', 10001,'829-521-5303', '09-12-1990', '02-24-2020', 18000),
(3, 3,'68451256897', 'Jesus', 'Saldaña', 'Director', 'Av España 005', 'Santo Domingo Este', 'Puertorriqueño', 10110,'849-555-5555', '12-08-1991', '01-28-2008', 70000),
(4, 4,'58945617896', 'John', 'Almonte', 'Supervisor', 'C/ El Sol 95', 'Santo Domingo Oeste', 'Dominicano', 10001,'809-521-8945', '09-01-1995', '04-01-2018', 25000),
(5, 5,'58944122301', 'Carlos', 'Milan', 'Gerente de Marketing', 'Av Gustavo Mejia 989', 'Santo Domingo Oeste', 'Dominicano', 10111,'829-891-5014', '10-12-1989', '04-13-2017', 23000),
(6, 6, '88855612301', 'Luis', 'Boureuf', 'Supervisor', 'Av Luperon 323', 'Santo Domingo Oeste', 'Dominicano', 10001,'849-571-9303', '03-02-1997', '05-21-2016', 25000),
(7, 7,'45665612301', 'Stella', 'Vallejo', 'Gerente general', 'C/ Pelempito 19', 'Santo Domingo Este', 'Haitiano', 10111,'809-985-5210', '01-25-1995', '10-01-2017', 18000),
(8, 8,'89632612301', 'Miguel', 'Machado', 'Contratista', 'C/ Maria Cabral 01', 'Santo Domingo Oeste', 'Dominicano', 10010,'809-666-7171', '06-24-1990', '08-25-2017', 20000),
(9, 9,'34521002301', 'Claudia', 'Grams', 'Recepcionista', 'Castelao, 74', 'Santo Domingo Oeste', 'Dominicano', 10110,'809-898-5444', '02-09-1998', '07-23-2018', 18000),
(10, 10,'78944588901', 'Richard', 'Carter', 'Recepcionista', 'Ourense, 17', 'Santo Domingo Oeste', 'Dominicano', 11100,'849-981-2103', '03-30-1985', '05-03-2019', 18000),
(11, 11,'78410025401', 'Salvador', 'Zimmerman', 'Publicista', 'C/ Arana, 39', 'Santo Domingo Este', 'Dominicano', 10111,'829-888-0333', '04-27-1987', '02-28-2018', 25000),
(12, 12,'55945612302', 'Dinah', 'Soper', 'Gerente Administrativo', 'Av Republica de Colombia', 'Santo Domingo Oeste', 'Venezolano', 10001,'849-254-7845', '09-28-1980', '11-25-2018', 30000),
(13, 13,'28949992000', 'Alexander', 'Brito', 'Supervisor', 'C/ La Basilica 33', 'Santo Domingo Oeste', 'Venezolano', 10111,'829-551-5663', '09-09-1995', '08-14-2018', 23000),
(14, 14,'77774154521', 'Eduardo', 'Gonzales', 'Contratista', 'C/ San Pedro 39', 'Santo Domingo Oeste', 'Dominicano', 10001,'809-887-3333', '09-28-1997', '11-25-2018', 30000),
(15, 15,'18945789541', 'Daniel', 'Mullix', 'Publicista', 'Av Monumental 35', 'Santo Domingo Oeste', 'Dominicano', 10001,'809-221-4747', '09-12-1998', '11-12-2017', 25000)

create table Residencia
(ID_residencia int primary key not null, Direccion varchar(30), Ciudad varchar(30), Telefono varchar(30))
insert into Residencia values
(1, 'Avenida Guachupita 64', 'Montevideo', '745-685-7878'),
(2, 'C/ Los Miraflores 69', 'Cantabria', '859-415-8151'),
(3, 'Avenida San Cristo 9393', 'Santiago de los Caballeros', '809-214-5474')

use AgenciaDeViajes 
alter table Contrato_Viaje
ADD constraint FK_IDcliente Foreign key (IDcliente)
references Clientes (IDcliente)

alter table Contrato_Viaje
ADD constraint FK_IDempleado foreign key (IDempleado)
references Empleados (IDempleado)

alter table Contrato_Viaje 
ADD constraint FK_IDtransporte foreign key(IDtransporte)
references Transporte (IDtransporte)

Alter table contrato_viaje 
ADD constraint FK_ID_Hoteles foreign key(ID_hoteles)
references hoteles (ID_hoteles)

alter table Viajes 
ADD constraint FK_IDViaje foreign key (IDViaje)
references Contrato_Viaje (IDViaje)

alter table empleados 
ADD constraint FK_IDnomina foreign key (IDnomina)
references NOMINA (IDnomina)

Alter table contrato_viaje 
ADD constraint FK_ID_RESIDENCIA foreign key(ID_RESIDENCIA)
references RESIDENCIA (ID_RESIDENCIA)

Alter table viajes 
ADD constraint FK_IDACTIVIDADES foreign key(IDACTIVIDADES)
references Actividades (IDACTIVIDADES)

