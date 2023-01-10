  
CREATE PROCEDURE spu_buscador
@code int,
@resultado int
 output AS
   select *from Empleado where ID_Empleado = @code;
	
  declare @variable decimal(4,2)
  exec spu_buscador 6, @variable output


    
CREATE PROCEDURE spu_Nombre
@nombre varchar(50),
@resultado int
 output AS
   select *from Empleado where Nombre_Empleado = @nombre;
	
  declare @variable int
  exec spu_Nombre Miguel, @variable output
  


Create PROCEDURE spu_Nomina
@resultado int
output AS
select top 2 Nombre_Empleado, Apellido_Empleado, Nomina.ID_Nomina,Fecha,Seguro,AFP,Descuentos,
Horas_extras,Salario_neto,Salario_bruto,Fecha_movimiento  
	from Nomina join empleado ON NOMINA.ID_Nomina = empleado.ID_nomina order by Salario_bruto desc

declare @variable int
exec spu_Nomina @variable output


Create procedure spu_seguros
@resultado int
output as
select * from SEGURO_MEDICO

declare @variable int
exec spu_seguros @variable output


Create procedure spu_descuentos
@resultado decimal(9, 2)
output as
select Nombre_Empleado, Apellido_Empleado, AFP, Seguro, Descuentos, SUM(Descuentos+AFP+Seguro) as 'Suma de descuentos'
from Nomina join empleado ON NOMINA.ID_Nomina = empleado.ID_nomina 
group by Nombre_Empleado, Apellido_Empleado, AFP, Seguro, Descuentos

declare @variable decimal(9, 2)
exec spu_descuentos @variable output

