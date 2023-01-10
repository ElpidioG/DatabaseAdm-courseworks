--Tabla 3.5.6.1: Lista los vendedores contratados antes de 1998.
SELECT nombre FROM repventas WHERE contrato<'01/01/1998'

--Tabla 3.5.6.2: Lista las oficinas cuyas ventas están por debajo del 75% del objetivo.
SELECT ciudad,ventas,objetivo FROM oficinas WHERE ventas< 0.75 * Objetivo

--Tabla 3.5.6.3: Lista de las oficinas que no se encuentran en la región Centro.
SELECT ciudad,region FROM oficinas WHERE region<> 'Centro'


--Tabla 3.5.6.4: Nombre y limite de crédito del cliente número 2107.
SELECT empresa,limite_credito FROM clientes WHERE num_clie=2107

--Tabla 3.5.6.5: Lista de vendedores que superan sus cuotas.
SELECT nombre FROM repventas WHERE ventas<=cuota

--Tabla 3.5.6.6: Lista de vendedores que no superan sus cuotas.
SELECT nombre FROM repventas WHERE ventas>=cuota

--Tabla 3.5.6.7: Relación de pedidos entre dos fechas.
SELECT num_pedido,fecha_pedido,producto,importe FROM pedidos WHERE fecha_pedido BETWEEN '10/01/1999' AND '12/31/1999'

--Tabla 3.5.6.8: Pedidos que caen en un determinado rango de importe.
SELECT num_pedido,importe FROM pedidos WHERE importe BETWEEN 20000.00 AND 29999.99

--Tabla 3.5.6.9: Lista de vendedores cuyas ventas no están entre el 75 y el 150% de su cuota.
SELECT nombre,ventas,cuota FROM repventas WHERE ventas NOT BETWEEN (0.75*cuota) AND (1.50*cuota)


--Tabla 3.5.6.10: Lista de los vendedores de las oficinas 11, 13 y 22.
SELECT nombre,cuota,ventas FROM repventas WHERE oficina_rep IN (11,13,22)

--Tabla 3.5.6.11: Pedidos obtenidos por cuatro vendedores específicos.
SELECT num_pedido,rep,importe FROM pedidos WHERE rep IN (101,103,107,109)

--Tabla 3.5.6.12: Limite de crédito de la empresa AFS S.A.
SELECT empresa,limite_credito FROM clientes WHERE empresa='AFS S.A.'

--Tabla 3.5.6.13: Empleados apellidados Martinez.
SELECT num_empl,nombre FROM repventas WHERE nombre LIKE '% Martinez'

--Tabla 3.5.6.14: Vendedores que aún no tienen asignada una oficina.
SELECT nombre FROM repventas WHERE oficina_rep IS NULL

--Tabla 3.5.6.15: Vendedores que tienen asignada una oficina.
SELECT nombre FROM repventas WHERE oficina_rep IS NOT NULL