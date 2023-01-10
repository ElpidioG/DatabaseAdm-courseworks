Create PROCEDURE spu_Sueldo @MaxEntityId int output AS Select top 2 Nombre_Empleado, Apellido_Empleado, max(Salario_Bruto) from Nomina 
join Empleado on Nomina.ID_Nomina = Empleado.ID_nomina 
group by Nombre_Empleado, Apellido_Empleado, Salario_bruto order by Salario_bruto desc
declare @variable int exec spu_Sueldo @variable output