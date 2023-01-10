
-- If. Lista de productos en almacen o en orden.
 Create procedure Sp_estadoproducto
@estado varchar(30)
as

if @estado = 'Almacen' 
Select ProductID, ProductName, UnitPrice, QuantityPerUnit, UnitsInStock From Products Where UnitsInStock != 0 

else if @estado = 'orden'

Select ProductID, ProductName, UnitPrice, QuantityPerUnit, UnitsOnOrder  From Products Where UnitsOnOrder != 0


--Case. Mostrar el sexo de un Empleado

Create Procedure Sp_genero
@id int
as 
SELECT EmployeeID, FirstName+' '+LastName as Nombre, Title, TitleOfCourtesy, BirthDate, Country, Address,
CASE
    WHEN TitleOfCourtesy = 'Ms.' THEN 'Mujer'
    ELSE 'Hombre'
END as Sexo 
FROM Employees where EmployeeID = @id

exec Sp_genero 5

--WHILE. top de productos mas caros. 
create procedure sp_productosmascaros
@cantidad int

as
declare @contador int SET @Contador=1 
while @contador <= @cantidad


SELECT ProductID, ProductName,CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder
FROM (SELECT ROW_NUMBER() OVER (ORDER BY UnitPrice desc) AS RowNum,*FROM Products  ) b
WHERE RowNum = @contador order by UnitPrice desc;
	
set @contador = @contador+1

 exec sp_productosmascaros 3


--All. Productos de los que se vendieron una cantidad especifica por orden
Create procedure Sp_cantidadventa
@cantidad int
As
SELECT [Order Details].ProductID, ProductName, OrderId, UnitsInStock, Quantity
FROM Products join [Order Details] on [Order Details].ProductID = Products.ProductID
WHERE [Order Details].Quantity = All (SELECT [Order Details].Quantity FROM [Order Details]
WHERE [Order Details].Quantity = @cantidad)
exec Sp_cantidadventa  2



 --AND. Clientes por pais y ciudad
create procedure sp_paiscliente
 
@pais varchar(50),
@ciudad varchar (50)
 
AS
SELECT * FROM Customers WHERE Country=@pais AND City= @ciudad;

exec sp_paiscliente Germany, Berlin


--Any. Productos con x o menos en stock
Create procedure Sp_Xcantidad
@cantidad int
As
Select  *
from Products Where UnitsInStock = any (Select UnitsInStock from Products 
where UnitsInStock = @cantidad or UnitsInStock < @cantidad)
exec Sp_Xcantidad  10


--Between. Mostrar los empleados contratados entre dos fechas

Create Procedure Sp_fechacontrato
@fecha1 date, @fecha2 date
as
Select * From Employees WHERE HireDate BETWEEN @fecha1 AND @fecha2

exec Sp_fechacontrato '1992-01-01', '1992-12-31'


-- Exists. Suplidores de productos con precio mayor o igual a: x
Create procedure Sp_suplidordeproductomayor
@precio int
as
SELECT Suppliers.SupplierID, CompanyName, ContactName, ProductID ,  productname, unitprice
FROM Suppliers join Products on  products.SupplierID = Suppliers.SupplierID 
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID) and UnitPrice >= @precio
order by UnitPrice desc

exec Sp_suplidordeproductomayor 50

--IN. Buscador por paises existentes
create procedure sp_buscadorporpaises
@pais1 varchar(20), @pais2 varchar(20), @pais3 varchar(20)
as
SELECT * FROM Customers
WHERE Country IN (@pais1, @pais2, @pais3);

exec sp_buscadorporpaises germany, france, spain

--LIKE. Productos que inician con: 
Create procedure sp_buscador
@inicio varchar(10)
as
select * from Products where ProductName LIKE @inicio + '%'  

exec sp_buscador pe


--not. productos que no estan en un estado
create proc sp_estadoproductos
@estado int
as
SELECT * FROM Products
WHERE NOT Discontinued = @estado;

exec sp_estadoproductos 1



--OR. Informacion de un producto por categoria
Create procedure sp_productocate
@cat1 int,
@cat2 int
as
Select CategoryID, ProductID, productName, UnitPrice, QuantityPerUnit, UnitsInStock, UnitsOnOrder from Products
where CategoryID = @cat1 or CategoryID = @cat2
order by CategoryID asc

exec sp_productocate 1,2

--some. Productos que tienen mas  de x cantidad en orden
create proc sp_cantidadproductos
@cantidad int
as
SELECT ProductID, ProductName, UnitPrice, QuantityPerUnit,  UnitsOnOrder FROM products
WHERE ProductID = some (SELECT ProductID FROM PRODUCTS WHERE UnitsOnOrder > @cantidad);

exec sp_cantidadproductos 30