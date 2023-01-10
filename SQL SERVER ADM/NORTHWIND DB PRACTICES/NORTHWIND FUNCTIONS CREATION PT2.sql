USE Northwind
--CONCAT
Select employeeid, CONCAT(firstname,' ',Lastname) as Fullname ,Title, BirthDate, City
from Employees where EmployeeID = 4


--SUM

select products.ProductID, productname,products.UnitPrice, SUM([Order Details].quantity) as 
cantidad_total,  SUM(([order details].UnitPrice*Quantity)-(Discount*([order details].UnitPrice*Quantity)/100))
as total_venta_producto 
from Products join [Order Details] on Products.ProductID = [Order Details].ProductID
where products.ProductID = 48 group by Products.ProductID, ProductName, Products.UnitPrice



-- TOTAL POR PRODUCTO EN UNA ORDEN

CREATE FUNCTION totalordenproductos(@idp int, @ido int) returns money
AS
Begin
declare @total money
select @total= (UnitPrice*Quantity)-(Discount*(UnitPrice*Quantity)/100) from 
[order details] where ProductID = @idp and OrderID = @ido
return @total
end

select orderid, productid, unitprice, quantity, discount, dbo.totalordenproductos(51, 10250) as total
from [order details] where ProductID = 51 and OrderID = 10250