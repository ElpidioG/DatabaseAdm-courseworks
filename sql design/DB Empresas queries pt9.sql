--Practica 9
--Tabla 3.6.5.1: Pedidos recibidos en los días en que un vendedor fue contratado.
SELECT Num_pedido,importe,Fecha_pedido,nombre FROM pedidos,repventas WHERE Fecha_pedido=contrato

--Tabla 3.6.6.1: Lista los vendedores y oficinas donde la cuota del vendedor es superior al 50% del objetivo de la oficina.
SELECT nombre, cuota, ciudad, objetivo FROM repventas, oficinas WHERE Oficina_rep=oficina and cuota>(0.5*objetivo)

--Tabla 3.6.7.1: Lista de las ciudades donde las ventas superan el objetivo.
SELECT ciudad,ventas FROM oficinas WHERE ventas>objetivo

--Tabla 3.6.7.2: Lista de los vendedores con ventas superiores a 30000.
SELECT nombre,ventas FROM repventas WHERE ventas>30000

--Error: Columna ‘ventas’ se encuentra en mas de una tabla.
SELECT nombre,ventas,ciudad FROM repventas, oficinas WHERE Oficina_rep=oficina

--Tabla 3.6.7.3: Lista del nombre, las ventas y la oficina de cada vendedor.
SELECT nombre,repventas.ventas,ciudad FROM repventas,oficinas WHERE Oficina_rep=oficina

--Tabla 3.6.8.1: Informe sobre todos los vendedores y las oficinas en que trabajan.
SELECT * FROM repventas, oficinas WHERE oficina_rep=oficina

--Error: Referencia duplicada a la tabla ‘repventas’.
SELECT nombre,nombre FROM repventas,repventas WHERE director=Num_empl

--Tabla 3.6.9.1: Empleados que son sus propios directores.
SELECT nombre,nombre FROM repventas WHERE director=Num_empl

--Tabla 3.6.9.2: Lista de los nombres de los vendedores y sus directores.
SELECT emps.nombre,dirs.nombre FROM repventas emps,repventas dirs WHERE emps.director=dirs.Num_empl

-- Tabla 3.6.9.3: Lista de los vendedores con una cuota superior a la de su director.
SELECT repventas.nombre,repventas.cuota,dirs.cuota FROM repventas, repventas dirs WHERE repventas.director=dirs.num_empl AND repventas.cuota>dirs.cuota

--Alias
SELECT nombre,repventas.ventas,ciudad FROM repventas,oficinas WHERE oficina_rep=oficina
SELECT r.nombre,r.ventas,ciudad FROM repventas r,oficinas WHERE r.oficina_rep=oficina