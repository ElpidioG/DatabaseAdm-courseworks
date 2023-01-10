use RRHH1
create table cliente
(
idcliente int, 
nombre varchar(20),
apellido varchar(20),
cedula varchar(12)
)

create table cliente_copia
(
idcliente int, 
nombre varchar(20),
apellido varchar(20),
cedula varchar(12)
)
create table cliente_eliminados
(
idcliente int, 
nombre varchar(20),
apellido varchar(20),
cedula varchar(12)
)


create trigger tr_guardarS
on cliente
After insert
AS
declare @idcliente int
declare @nombre varchar(20)
declare @apellido varchar(20)
declare @cedula varchar(12)

select @idcliente = i.idcliente from inserted as i
select @nombre = i.nombre from inserted as i
select @apellido = i.apellido from inserted as i
select @cedula = i.cedula from inserted as i

insert into cliente_copia (idcliente, nombre, apellido, cedula)
values(@idcliente, @nombre, @apellido, @cedula)

insert into cliente (idcliente, nombre, apellido, cedula)
values(475, 'Ana', 'Perez', '5544645')












--Hacer un trigger que elimine un cliente utilizando la tabla hacer una copia en la tabla clintedelete.
create trigger tr_guardar_borrados
on cliente
for delete 
AS
insert into  cliente_eliminados select * from deleted
go
------------------
Delete 
From cliente 
Where idcliente = 455
Insert into  cliente_copia

select*from cliente_eliminados

--Hacer un trigger que al insertar un registro cree una copia de este en la tabla clintecopia.

create trigger tr_guardarCOPIAsd
on cliente
for insert 
AS
insert into  cliente_copia select * from inserted
go
--------------------------
insert into cliente (idcliente, nombre, apellido, cedula)
values(36, 'Pena', 'Ozza', '95953125')

select*from cliente_copia where idcliente = 36
select*from cliente where idcliente = 36




