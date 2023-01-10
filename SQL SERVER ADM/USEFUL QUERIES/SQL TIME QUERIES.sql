TIME: TIEMPO

create table hora (
idhora int, hora time)
insert	into hora values (6, getdate())
insert	into hora values (5, '12:40')


create table tiempo (
idhora int, hora time, fecha date, fechayhora datetime, fechora datetime2, timepk smalldatetime, timepk2 datetimeoffset)
insert	into tiempo values (6,getdate(),getdate(), getdate(),getdate(),getdate(),getdate())
insert	into tiempo values (5, getdate(),getdate(),getdate(),getdate(),getdate(),getdate())

select * from tiempo

SELECT DATENAME(WEEKDAY,GETDATE()) AS NOMBREDIA, DAY(GETDATE()) AS DIA

SELECT  DAY('10-5-2017') DIA,  DATENAME(WEEKDAY,'10-5-2017') AS NOMBREDIA, 
MONTH('10-5-2017') MES, DATENAME(MONTH,'10-5-2017') AS NOMBREMES, 
YEAR('10-5-2017') Año, CASE WHEN YEAR ('10-5-2017') % 400 = 0 THEN 'Año Bisiesto' WHEN YEAR ('10-5-2017') % 100 = 0 THEN 'Año NO Bisiesto'
WHEN YEAR ('10-5-2017') % 4 = 0 THEN 'Año Bisiesto' ELSE 'Año NO Bisiesto' END


SELECT DATEDIFF(day, '01/01/0001', getdate()) AS dias, DATEDIFF(MONTH, '01/01/0001', getdate()) AS meses;

select SYSDATETIME() as sysdata

select ISDATE('2021-1-26')

select GETUTCDATE();

select DATEADD(YEAR, 1, '2018-08-21') as fecha

select DATEADD(DAY, 3, '2018-08-21') as fecha

select DATEADD(MONTH, 4, '2018-08-21') as fecha

select DATEDIFF(YEAR, '2017-05-20', '2010-03-11') as diferencia
select DATEDIFF(MONTH, '2017-05-20', '2010-03-11') as diferencia
select DATEDIFF(DAY, '2017-05-20', '2010-03-11') as diferencia

select DATEDIFF (minute, second, hour)
select DATEPART(YEAR, '2020-08-23') as parteano
select DATEPART(MONTH, '2020-08-23') as partemes
select DATEPART(DAY, '2020-08-23') as partedia

select DATENAME(YEAR, '2020-08-23') as nombreaño
select DATENAME(MONTH, '2020-08-23') as nombremes
select DATENAME(DAY, '2020-08-23') as nombredia

select DATENAME(MINUTE, '2020-05-10 12:09') as nombreminuto
select DATENAME(HOUR, '2020-05-10 12:09') as nombrehora
select DATENAME(SECOND, '2020-05-10 12:09') as nombresegundo

@nombre varchar(15);

nombre = @nombre
where edad = @edad

DECLARE @edad int = 3;
SELECT @edad as variableEdad
