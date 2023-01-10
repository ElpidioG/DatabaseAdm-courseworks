Use database RRHH



create table DetallePresupuesto 
(
IDdetalleP int,
Fechadistribución date,
PresupuestoDepartamento dec(10,2),
Descripcion varchar (100),
Id_departamento int
)

create table Usuario
(
Id_usuario int primary key,
Nombre varchar(50),
Apellido varchar(50),
Email varchar(50),
Telefono varchar(50),
NombreUsuario varchar(50),
Contraseña varchar(50),

)

create table Seguro_Medico
(
Id_seguro int primary key,
nombre_seguro varchar (50),
PlanSeguro varchar(50),
Poliza varchar(50),
Inicio_de_vigencia date,
Fecha_caducidad date
)

create table categoria_empl
(
ID_catempl int primary key,
Nombre_categoria varchar(30),
Descripcion_categoria varchar(30)
)
