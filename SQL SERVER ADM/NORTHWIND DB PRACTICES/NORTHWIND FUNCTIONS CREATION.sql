use Northwind
-- COUNT

CREATE FUNCTION totalordenproductos_(@idp int, @ido int) returns int
AS
Begin
declare @total int
select @total= (UnitPrice*Quantity)-(Discount*(UnitPrice*Quantity)/100) from [order details] where ProductID = @idp and OrderID = @ido
return @total
end

select orderid, productid, unitprice, quantity, discount, dbo.totalordenproductos_(51, 10250) as total
from [order details] where ProductID = 51 and OrderID = 10250