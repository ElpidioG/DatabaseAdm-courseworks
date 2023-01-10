
Select * from Employees
	SET IDENTITY_INSERT Employees On
--1...Que registe un empleado

Create Procedure Sp_Registro
@id int, @lastname  nvarchar (20), @firstname nvarchar (10), @Title nvarchar (30), @courtesy nvarchar (25), @birth datetime, @hire datetime,
@address nvarchar (60), @city nvarchar (15), @region nvarchar (15), @postalcode nvarchar (15), @country  nvarchar (15),
@HomePhone nvarchar(24), @Extension nvarchar (4), @Photo image, @Notes nvarchar (max), @reports int, @photopath nvarchar (255)
As
Insert Into Employees(EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, [Address],
City, Region, PostalCode, Country, HomePhone, Extension,Photo, Notes, ReportsTo, PhotoPath) values
(@id, @lastname, @firstname, @Title, @courtesy, @birth, @hire, @address, @city, @region, @postalcode, @country, @HomePhone, 
@Extension, @Photo, @Notes, @reports, @photopath)

select * from Employees where EmployeeID = @id

exec Sp_Registro
110, 'Ernest', 'Hemingway', 'Vicepresident', 'Mr.', '1994-12-02','2018-09-12', '290W. Paramel', 'Ohio', 'Oh', 
'98122', 'USA', '(206) 323-1243',
'7645', null, null, 3, null



--2
CREATE PROCEDURE sp_femmas
@sexo varchar(15) 
as
if @sexo = 'F' select * from Employees where TitleOfCourtesy = 'Mrs.' or TitleOfCourtesy = 'Ms.'   else	if @sexo = 'M'
select * from Employees	where TitleOfCourtesy = 'Dr.' or TitleOfCourtesy = 'Mr.'

 exec sp_femmas f



-- buscar , que elimine un empleado, imprimir que se elimino ###

create procedure sp_buscar
@id int
as select * from Empleado where ID_Empleado = @id

exec sp_buscar 10

create procedure sp_eliminar
@id int
as 
select * from Empleado where ID_Empleado = @id
delete from Empleado where ID_Empleado = @id
select * from Empleado where ID_Empleado = @id
print 'se ha eliminado el empleado ' print (@Id)
exec sp_eliminar 8


--4-- Buscar, suba el sueldo a un empleado
Create procedure Buscar_empleado
@ID int 
as
SELECT Empleado.ID_Empleado, Empleado.Nombre_empleado + ' ' + Empleado.Apellido_empleado 
as Nombre_Completo,  Puesto, nomina.ID_Nomina
FROM Empleado join Nomina on Empleado.ID_nomina = nomina.ID_Nomina

where ID_Empleado = @ID

EXEC Buscar_empleado 8

Create procedure Subir_sueldo
@ID_Nomi int, 
@porcentaje int
as
select * from nomina where ID_Nomina = @ID_Nomi
UPDATE Nomina SET Salario_bruto =(((Salario_bruto * @porcentaje)/100)+Salario_bruto) WHERE ID_Nomina = @ID_Nomi
UPDATE Nomina SET Seguro =( Salario_bruto *3.04)/100 WHERE ID_Nomina = @ID_Nomi
UPDATE Nomina SET AFP =(Salario_bruto*2.87)/100 WHERE ID_Nomina = @ID_Nomi
UPDATE Nomina SET Descuentos = Seguro + AFP WHERE ID_Nomina = @ID_Nomi
UPDATE Nomina SET Salario_neto = Salario_bruto - Descuentos WHERE ID_Nomina = @ID_Nomi
select * from nomina where ID_Nomina = @ID_Nomi
EXEC Subir_sueldo 102, 10


--5-- Que producto se vende menos por año
create procedure sp_Producto
@year int
as

select  top 1 [Order Details].Quantity as Cant, ProductName, OrderDate 
from Products join [Order Details] on Products.ProductID = [Order Details].ProductID
inner join Orders on [Order Details].OrderID = Orders.OrderID
where YEAR(OrderDate) = @year
group by ProductName, [Order Details].Quantity , OrderDate
order by min([Order Details].Quantity)

exec sp_Producto 1997




-- 6.Sueldo Total Que Gano Por Año Cada Empleado

create procedure SP_SueldoAnual
as
Select nomina.ID_Nomina,Id_Empleado,Nombre_Empleado + ' ' + Apellido_Empleado 
as Empleado, Puesto, Salario_neto*12  as Sueldo_Anual
From Empleado join nomina on Empleado.ID_nomina = Nomina.ID_Nomina

execute SP_SueldoAnual