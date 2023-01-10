-- Tabla 3.5.5.1: Oficinas donde las ventas exceden al objetivo. 
SELECT ciudad,ventas,objetivo FROM oficinas WHERE ventas>objetivo

--Tabla 3.5.5.2: Nombre, ventas y cuota del empleado número 105.
SELECT nombre,ventas,cuota FROM repventas WHERE num_empl=105

--Tabla 3.5.5.3: Empleados dirigidos por el empleado número 104.
SELECT nombre,ventas FROM repventas WHERE director=104