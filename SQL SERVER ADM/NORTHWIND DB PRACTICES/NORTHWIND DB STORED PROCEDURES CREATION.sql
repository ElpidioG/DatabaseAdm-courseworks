use northwind

create procedure spu_codigo
@code varchar (50)
  AS
   select * from Customers where CustomerID like @code+'%';
  exec spu_codigo 'BO'




create  procedure spu_ventas
@orden int,
@producto int,
@cantidad int
as

select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder from products where ProductID = @producto;
select OrderID, ProductID, UnitPrice, Quantity, Discount, ((UnitPrice * Quantity) -Discount) as 'total'  
from [Order Details] where ProductID = @producto and OrderID = @orden; 

Update Products set UnitsInStock = UnitsInStock - @cantidad where ProductID = @producto ;
Update Products set UnitsOnOrder = UnitsOnOrder + @cantidad where ProductID = @producto;
Update [Order Details] set Quantity = Quantity + @cantidad where ProductID = @producto and OrderID = @orden; 

select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder from products where ProductID = @producto;

select OrderID ,ProductID, UnitPrice, Quantity, Discount, ((UnitPrice * Quantity) -Discount) as 'total'  
from [Order Details] where ProductID = @producto and OrderID = @orden; 

exec spu_ventas 10248, 11, 2 


Create procedure spu_precio
@Id int
as
select  ProductID, ProductName ,UnitPrice from Products where ProductID = @Id;
exec sp_precio 11


CREATE PROCEDURE sp_cumpleempl
@id varchar(5)
AS
 select employeeid, FirstName, LastName, FORMAT(BirthDate,'dd/MM') as FechaCumple from Employees where EmployeeID  = @id;
 exec sp_cumpleempl 3	

create procedure sp_ventasempl
@emplID int
as
select Employees.EmployeeID, (Employees.FirstName+' '+Employees.LastName) 
as 'fullname',OrderID, CustomerID,Freight,OrderDate,RequiredDate, ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry  
from Employees join Orders on Employees.EmployeeID = Orders.EmployeeID 
where Employees.EmployeeID = @emplID;

exec sp_ventasempl 2