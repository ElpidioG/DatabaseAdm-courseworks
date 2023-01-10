CREATE PROCEDURE	 spu_promedio
@nota1 decimal(4,2),
@nota2 decimal(4,2),
@nota3 decimal(4,2),
@nota4 decimal(4,2),
@nota5 decimal(4,2),
@resultado decimal(4,2)
 output AS
   select @resultado=(@nota1+@nota2+@nota3+@nota4+@nota5)/5;
	
  declare @variable decimal(4,2)
  exec spu_promedio 5,6,7,8,7, @variable output
  select  @variable as 'promedio'

