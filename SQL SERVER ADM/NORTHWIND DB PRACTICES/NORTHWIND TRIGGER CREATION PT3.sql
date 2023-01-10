-- TRIGGER 2. un trigger que crea un registro antes de actualizar un campo de una tabla.

use Northwind;
go

CREATE TRIGGER trg_actucampo4 ON products
after UPDATE as begin
declare @id int;
select @id = productid from deleted
delete from productoclonado where productoclonado.ProductID = @id
insert into  productoclonado select * from deleted
end;



UPDATE Products
SET UnitPrice = 200
WHERE ProductID = 1;

select * from productoclonado order by ProductID asc 
select * from Products 

drop trigger trg_actucampo4


-- TRIGGER 2. un trigger que crea un registro antes de actualizar un campo de una tabla.

use Northwind;
go

CREATE TRIGGER trg_actucampo5 ON products
for UPDATE as begin
insert into  productoclonado select * from deleted
end;


UPDATE Products
SET UnitPrice = 235
WHERE ProductID = 1;

select * from productoclonado 
select * from Products 

drop table productoclonado
select * into productoclonado from Products
drop trigger trg_actucampo5