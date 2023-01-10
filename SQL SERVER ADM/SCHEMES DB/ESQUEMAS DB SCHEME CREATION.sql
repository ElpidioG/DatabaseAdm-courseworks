create database esquemas;
USE esquemas
CREATE TABLE Cliente
(
IDCliente int,  Nombre varchar(50),Apellido varchar(50),FechaNacimiento date,Dirección varchar(50),Telefono varchar(50),
Ciudad varchar(50),País varchar(25));

CREATE TABLE Producto (ProductoID int,ProductoNombre	nvarchar(40),SuplidorID	int,CategoriaID	int,
CantidadPorUnidad	nvarchar(20),PrecioUnidad	money,UnidadenAlmacen	smallint,UnidadenOrden	smallint,Estado bit);

CREATE TABLE Empleado
(  EmpleadoID int,  Nombre varchar(255),  Apellido varchar(255),Posición varchar(255),FechaNacimiento date,
FechaContratacion date,Correo varchar(255),  Dirección varchar(255),  Ciudad varchar(255),Telefono varchar(50),
Extension varchar(50)); 


create schema ejemplar;


alter schema ejemplar transfer dbo.Empleado
alter schema ejemplar transfer dbo.Cliente
alter schema ejemplar transfer dbo.Producto


CREATE TABLE ejemplar.Cliente
(
IDCliente int,  Nombre varchar(50),Apellido varchar(50),FechaNacimiento date,Dirección varchar(50),Telefono varchar(50),
Ciudad varchar(50),País varchar(25));

CREATE TABLE ejemplar.Producto (ProductoID int,ProductoNombre	nvarchar(40),SuplidorID	int,CategoriaID	int,
CantidadPorUnidad	nvarchar(20),PrecioUnidad	money,UnidadenAlmacen	smallint,UnidadenOrden	smallint,Estado bit);

CREATE TABLE ejemplar.Empleado
(  EmpleadoID int,  Nombre varchar(255),  Apellido varchar(255),Posición varchar(255),FechaNacimiento date,
FechaContratacion date,Correo varchar(255),  Dirección varchar(255),  Ciudad varchar(255),Telefono varchar(50),
Extension varchar(50)); 


Create schema borrar
drop schema borrar