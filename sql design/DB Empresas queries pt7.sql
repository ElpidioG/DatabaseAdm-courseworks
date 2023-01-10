-- Práctica 7
--Tabla 3.6.1: Ejemplo de consulta de dos tablas.
SELECT Num_pedido,importe,empresa,Limite_credito FROM pedidos,clientes WHERE clie=Num_Clie

--Tabla 3.6.1.1: Lista de los vendedores y la ciudad y región donde trabajan.
SELECT nombre,ciudad,region FROM repventas,oficinas WHERE Oficina_rep=oficina

--Tabla 3.6.2.1: Lista de los vendedores de las oficinas con objetivo igual o superior a 60000.
SELECT nombre,ciudad,region FROM repventas,oficinas WHERE oficina_rep=oficina AND objetivo >=60.000