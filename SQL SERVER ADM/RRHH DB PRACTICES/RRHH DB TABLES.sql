Create table Empleado
(
ID_Empleado varchar(30),
Apellido_Empleado varchar(30),
Fecha_Nacimiento date,
Telefono varchar(12),
Direccion varchar(30),
Foto image,
Email varchar(30)
)

Create table Nomina
(
ID_Nomina int identity(100,1) primary key,
ID_Empleado int,
Fecha date,
Segura decimal(5,2),
AFP dec(5,2),
Descuentos dec(5,2),
Horas_Extras dec(5,2),
Salario_Neto dec(9,2),
Salario_Bruto dec(9,2),
Fecha_Movimiento datetime
)

Create Table Departamentos
(
ID_Departamentos int primary key,
Departamentos varchar (30),
Descripcion varchar (40),
Telefono varchar (12),
Email varchar (30),
FechaInicio date
)

Create Table Empresa
(
ID_empresa int primary key,
Nombre varchar (30),
Dirección varchar (40),
Ciudad varchar (40),
Codigo_Postal varchar (40),
Telefono varchar (12),
Email varchar (30),
EstadoFinanciero varchar (50),
Subsidiario varchar (30),
Cantidad_Empleados int
)


create table Presupuesto 
(
ID_Presupuesto int primary key,
Fecha date,
Ingreso dec(9,2),
Gastos_De_Servicio dec(9,2),
Gastos_De_Materia dec(9,2),
Gastos_De_equipos dec(9,2),
Gastos_De_Cajachica dec(9,2),
Impuestos dec(9,2),
Seguros dec(9,2)
)

create table Expediente
(
ID_Expediente int primary key,
Educacion varchar(200),
Talleres varchar(200),
Experiencia varchar(200),
Habilidades varchar(200),
Idiomas varchar(200),
Puntaje_en_los_Tests dec(3,2)
)