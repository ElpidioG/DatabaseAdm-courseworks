create database Farmacia_Perez

Use Farmacia_Perez
create table Empleado (Idempleado int primary key, Nombre_empleado varchar(30), Apellido_empleado varchar (30), Email varchar (30), Fecha_Nacimiento varchar (50), Teléfono varchar (20), Dirección varchar (50), Foto image null, Puesto varchar (20))
create table Nomina (Idnomina int primary key, Fecha date, Seguro decimal(10,2), AFP decimal (10,2), Descuentos decimal (10,2), HorasExtras decimal (10,2), SalarioNeto decimal (9,2), SalarioBruto decimal (9,2), FechaMovimiento datetime)
create table Usuario (Idusuario int primary key, Nombre_Usuario varchar (30), Contraseña varchar (30))


-- RELACIONES
alter table empleado
ADD ID_nomina int, constraint FK_Idnomina Foreign key (ID_nomina) references nomina (IDnomina)

alter table Empleado
ADD ID_usuario int, constraint FK_ID_usuario
Foreign key (ID_usuario) references Usuario (IDusuario)


Insert into Empleado
values (1,'Salvador','Zimmerman', 'salvazimm@gmail.com','1987-04-27', '829-888-0333', 'C/ Arana, 39', NULL, 'Delivery'),
(2,'Pedro','Neto', 'pedroneto@gmail.com','1994-02-14', '809-238-5463', 'C/ Amapola, 42', NULL, 'Farmaceutico'),
(3,'Juan','Marichal', 'juanmarich@gmail.com','1989-06-11', '809-732-7770', 'C/ Juajica, 12', NULL, 'Delivery'),
(4,'Sonic','Warrior', 'sonicwarri||@gmail.com',	'1992-03-31', '809-269-3323', 'C/ Senton, 2', NULL, 'Gerente'),
(5,'Mata','Dero', 'matadro@gmail.com',	'1990-01-04', '809-372-3803', 'C/ Oliva, 18', NULL, 'Cajero')

Insert into Nomina 
values (1,'2021/01/14',456, 430.5,	1500, 1250, 13863.5, 15000, '2021-01-15 04:00:00 PM'),
(2,'2021/01/14',912, 861, 2000, 1000, 29027, 30000, '2021-01-15 04:00:00 PM'),
(3,'2021/01/14',456, 430.5, 500, 1315, 13928.5, 15000, '2021-01-15 04:00:00 PM'),
(4,'2021/01/14',1520, 1435, 0, 0, 47045, 50000, '2021-01-15 04:00:00 PM'),
(5,'2021/01/14',608, 574, 1000, 750, 19468, 20000, '2021-01-15 04:00:00 PM')


Insert into Usuario
values (1,'SalvaZimmer','Zimmer123'),
(2,'NetoP','Pedrito12'),
(3,'MarichalJ','Escogido54'),
(4,'SonicW||','Supersonic321'),
(5,'Mata2r','Derodero22')

use Farmacia_Perez
create table productos (idproducto int, nombre varchar (50))

use Farmacia_Perez
drop table productos

select * from Usuario

use Farmacia_Perez	
drop login visitante