
create database RRHH
GO

use RRHH
GO

--Tabla Nomina
Create Table Nomina
(
ID_Nomina int identity(100,1) primary key,
ID_Empleado int,
Fecha date,
Seguro dec (5,2),
AFP    dec (5,2),
Descuentos dec (5,2),
Horas_extras dec (5,2),
Salario_neto dec (9,2),
Salario_bruto dec (9,2),
Fecha_movimiento datetime
)

--Tabla Empleado
Create Table Empleado
(
ID_Empleado int identity primary key,
Nombre_Empleado varchar (30),
Apellido_Empleado varchar (30),
Fecha_Nacimiento date,
Telefono varchar (12),
Direccion varchar (30),
Foto image,
Puesto varchar (20),
Email varchar (30)
)


--Tabla Departamento
Create table Departamentos 
(ID_Departamentos Int primary key, 
Departamentos varchar(30),
Descripcion varchar (40),
Telefono varchar (12),
Email varchar (30),
Fecha_Inicio date
)


--Tabla Presupuesto
Create table Presupuesto
(
ID_presupuesto Int identity(1000,1) primary key,
Fecha date,
MontoPresupuesto dec(12,2),
Descripcion varchar(50)
)


--Tabla Expedientes
Create Table Expediente
(
ID_Expediente int identity primary key,
Nivel_de_estudio varchar(30),
Carrera varchar(50),
Universidad varchar(50),
HabilidadesExtras varchar(100),
Experiencia_laboral varchar(100),
Referencias_laboral varchar(100),
Examen_Psicologico int,
Examen_de_actitud int
)

--Tabla Cursos
Create Table Cursos
(
IdCursos int identity(10,1) primary key,
NombreCursos varchar(30),
Instituto varchar(30),
Fechainicio date,
Fechafin date
)


--Tabla Empresa
Create Table Empresa
(
ID_Empresa Int identity(1100,5) primary key,
Nombre varchar(30),
Fecha_de_creacion date,
Descripcion varchar(50),
Telefono varchar(12),
Direccion varchar (30),
Email varchar(30)
)

--Tabla de Detallepresupuesto 
Create table DETALLE_PRESUPUESTO(
IdDetallePresupuesto int identity primary key,
IdDepartamento int,
Monto dec(9,2),
Fecha date,
Estado varchar(15)
)


--Tabla Usuario
Create Table Usuario
(
Idusuario int identity primary key,
Nombre_usuario varchar(50),
Contraseña varchar(50)
)


--Tabla Categoria de Empleado
Create Table Categorias
(
Idcategoria varchar(5) primary key,
Nombre_categoria varchar(25),
Descripcion varchar(70)
)


--Tabla Seguro Medico
create table SEGURO_MEDICO (
IdSeguro int identity primary key,
Seguro nvarchar (40),
Contacto nvarchar(12),
Correo nvarchar(40),
Direccion nvarchar(50),
FechaContrato date
)

--Plan Seguro
Create table PLANES_SEGURO(
IdPlanSeguro int identity primary key, 
NombrePlan nvarchar(30),
Cobertura nvarchar (50),
Descripcion nvarchar(50)
)

--Llaves Foráneas para establecer relaciones 

alter table empleado ADD ID_nomina int, constraint FK_IDnomina
Foreign key (ID_nomina) references nomina (ID_nomina)

alter table presupuesto ADD IdDetallePresupuesto int, constraint FK_IdDetallePresupuesto
Foreign key (IdDetallePresupuesto) references Detalle_Presupuesto (IdDetallePresupuesto)

alter table Empleado
ADD ID_Empresa int, constraint FK_ID_Empresa Foreign key (ID_Empresa) 
references Empresa (ID_Empresa)

alter table Departamentos
ADD ID_Empresa int, constraint FK_ID_Empresa Foreign key (ID_Empresa) 
references Empresa (ID_Empresa)

alter table Seguro_medico
ADD IdPlanseguro int, constraint FK_IdPlanseguro Foreign key (IdPlanseguro) 
references Planes_seguro (IdPlanseguro)


alter table empleado
ADD ID_Expediente int, constraint FK_ID_Expediente Foreign key (ID_Expediente) references Expediente (ID_Expediente)


alter table DETALLE_PRESUPUESTO 
ADD constraint FK_IdDepartamento foreign key (IdDepartamento)
references Departamentos(ID_Departamentos)

alter table Empleado
ADD IDcategoria int, constraint FK_IDcategoria
Foreign key (IDcategoria) references Categorias (IDcategoria)

alter table Empleado
ADD ID_usuario int, constraint FK_ID_usuario
Foreign key (ID_usuario) references Usuario (IDusuario)

alter table Expediente
ADD IdCursos int, constraint FK_IdCursos
Foreign key (IdCursos) references cursos (IdCursos)

alter table Empleado
ADD ID_seguro int, constraint FK_ID_seguro
Foreign key (ID_seguro) references Seguro_medico (ID_seguro)

select * from Usuario

