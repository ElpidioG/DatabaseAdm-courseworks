CREATE TRIGGER tr_avisocumplea�os


ON Employees  --Tabla donde se ejecuta el desencadenador

--El desencadenador se activar� cuando


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
	print 'Este empleado cumplea�os'
	end
     
	 
go

--Probar nuestro trigger

insert into Employees(Address) values('')
drop trigger tr_avisocumplea�os







CREATE TRIGGER tr_avisocumplea�os1

ON Employees  --Tabla donde se ejecuta el desencadenador

--El desencadenador se activar� cuando


instead of update, delete, insert
AS
declare  @fecha datetime


     --Instrucciones del desencadenador
	 select EmployeeID, FirstName+' '+LastName as emplname,DATEPART(MONTH, BirthDate)  as mes ,  DATEPART(day, BirthDate) as dia,
	 case
	 when DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, BirthDate) and DATEPART(DAY, GETDATE()) = DATEPART(day, BirthDate)
	 then 'ESTE EMPLEADO CUMPLEA�OS HOY'
	 End as Cumplea�ero

	 from Employees
	 where DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, BirthDate) and DATEPART(DAY, GETDATE()) = DATEPART(day, BirthDate)

	 
     
	 
go

--Probar nuestro trigger

update Employees
set  title = 'cumplea�ero'