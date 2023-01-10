CREATE TRIGGER trmensaje_pasajero

ON productoclonado --Tabla donde se ejecuta el desencadenador

--El desencadenador se activará cuando

--las operaciones Insert y Update son correctas

FOR INSERT, UPDATE

AS
     --Instrucciones del desencadenador

     PRINT 'Producto actualizado correctamente'

go

--Probar nuestro trigger
update productoclonado set ProductName='cocacola'
where ProductID=2
go