create table Empleados
(
ID_empleado int,
Nombre varchar(50),
Apellido varchar(50),
Fecha_Nacimiento date,
Cargo varchar(50),
Fecha_contratación date,
ID_departamento int
)


select ID_empleado,Nombre,Apellido,Fecha_Nacimiento,Cargo,Fecha_contratación,ID_departamento from Empleados where ID_empleado=


create table Productos 
(
ID_producto int,
Producto varchar(50),
Precio decimal (6,2),
Cantidad int,
ID_suplidor int,
ID_categoria int,
Estado bit
)


select ID_producto, producto, precio, cantidad, ID_suplidor, ID_categoria, Estado from Productos where ID_producto = 




create table Compras
(
ID_compra int,
Producto varchar(50),
Fecha_pedido datetime,
Fecha_entrega datetime,
Id_suplidor int,
Precio_unidad decimal(6,2),
Cantidad int
)


select ID_compra, Producto, Fecha_pedido, Fecha_entrega, Id_suplidor,Precio_unidad, Cantidad from Compras where ID_compra =


create table Ventas
(
ID_Factura int,
Fecha datetime,
Cliente varchar(50),
Producto varchar(50),
Precio decimal(6,2),
Cantidad int,
Total decimal(6,2)
)



create table Departamentos
(
ID_departamento int,
Nombre varchar(50),
Descripcion varchar(300)

)

create table factura(
idfactura int,
nom_producto varchar(50),
nom_Cliente varchar(50),
precio money,
cantidad int,
precio_total money,
fecha date

)

create procedure sp_factura
@idfactura int
as
begin
select idfactura, nom_cliente, nom_producto, precio, cantidad, precio_total, fecha from factura where idfactura = @idfactura
end


select ID_departamento, Nombre, Descripcion from Departamentos where ID_departamento = 


create table Usuario(id_usuario int, usuario varchar(50), clave varchar(50))

select count(*) from Usuario where usuario = @user and clave = @clave



delete factura where idfactura = '' and nom_producto = ''

select  distinct(year(fecha)) as año, idfactura from factura
select fecha from factura

alter table factura drop column fecha



Create procedure sp_ventas
@fecha varchar(10)
as
begin
select idfactura, empleado, fecha, sum(precio_total) as total_a_pagar from Factura where (datepart(YY,fecha)) = @fecha
group by idfactura, empleado, fecha
end



	drop procedure sp_ventas
use GreenPick
select idfactura,empleado,fecha, sum(precio_total) as precio_total
from Factura where (datepart(YY,fecha)) = '2020'
group by idfactura,empleado,fecha

select * from factura where idfactura = 10009