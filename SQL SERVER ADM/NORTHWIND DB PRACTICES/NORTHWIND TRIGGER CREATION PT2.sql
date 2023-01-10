-- TRIGGER 2. un trigger que crea un registro antes de actualizar un campo de una tabla.

use Northwind;
go

CREATE TRIGGER trg_actucampo5 ON products
for UPDATE as begin
insert into  productoclonado select * from deleted
end;

drop trigger trg_actucampo5
UPDATE Products
SET UnitPrice = 235
WHERE ProductID = 1;

select * from productoclonado 
select * from Products 

drop table productoclonado
select * into productoclonado from Products