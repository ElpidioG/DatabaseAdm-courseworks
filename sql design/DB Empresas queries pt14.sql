--Practica 14
-- Tabla 3.8.3.1: Lista de clientes cuyos vendedores est�n asignados a oficinas de la regi�n de ventas Centro.
SELECT empresa FROM clientes WHERE Rep_Clie IN (SELECT Num_empl  FROM repventas WHERE Oficina_rep IN (SELECT oficina  FROM oficinas WHERE region='Centro'))

--Tabla 3.8.4.1: Lista de los vendedores cuyo tama�o de pedido medio para productos fabricados por �ACI� es superior al tama�o de pedido medio global.
SELECT nombre,AVG(importe) FROM repventas,pedidos WHERE Num_empl=rep AND fab='ACI' GROUP BY nombre HAVING AVG(importe)>(SELECT AVG(importe)FROM pedidos)