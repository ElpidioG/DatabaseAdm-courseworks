CREATE TRIGGER tr_avisocumpleaños


ON Employees  --Tabla donde se ejecuta el desencadenador

--El desencadenador se activará cuando


instead of update, delete, insert
AS
declare  @fecha datetime;

     --Instrucciones del desencadenador
	 select EmployeeID, FirstName+' '+LastName as emplname,DATEPART(MONTH, BirthDate)  as mes ,  DATEPART(day, BirthDate) as dia
	 from Employees
	 where DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, BirthDate) and DATEPART(DAY, getdate()) = DATEPART(day, BirthDate)

	 select @fecha = birthdate from Employees where DATEPART(MONTH, getdate()) = DATEPART(MONTH, BirthDate) and DATEPART(DAY,getdate() ) = DATEPART(day, BirthDate) 
	
	if (DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, @fecha) and DATEPART(DAY, getdate()) = DATEPART(day, @fecha))
	begin
	print 'Este empleado cumpleaños'
	end
     
	 
go

--Probar nuestro trigger

insert into Employees(Address) values('')
drop trigger tr_avisocumpleaños







CREATE TRIGGER tr_avisocumpleaños1

ON Employees  --Tabla donde se ejecuta el desencadenador

--El desencadenador se activará cuando


instead of update, delete, insert
AS
declare  @fecha datetime


     --Instrucciones del desencadenador
	 select EmployeeID, FirstName+' '+LastName as emplname,DATEPART(MONTH, BirthDate)  as mes ,  DATEPART(day, BirthDate) as dia,
	 case
	 when DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, BirthDate) and DATEPART(DAY, GETDATE()) = DATEPART(day, BirthDate)
	 then 'ESTE EMPLEADO CUMPLEAÑOS HOY'
	 End as Cumpleañero

	 from Employees
	 where DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, BirthDate) and DATEPART(DAY, GETDATE()) = DATEPART(day, BirthDate)

	 
     
	 
go

--Probar nuestro trigger

update Employees
set  title = 'cumpleañero'