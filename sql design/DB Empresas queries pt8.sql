--Práctica 8
--Tabla 3.6.3.1: Lista todos los pedidos, mostrando los importes y las descripciones del producto.
SELECT Num_pedido, Importe, Descripcion FROM pedidos,productos WHERE fab=Id_fab AND producto=Id_producto

--Tabla 3.6.4.1: Lista de los pedidos superiores a 25000, incluyendo el nombre del vendedor que tomo el pedido y el nombre del cliente que lo solicitó.
SELECT Num_pedido,importe,empresa,nombre FROM pedidos,clientes,repventas WHERE clie=Num_Clie AND rep=Num_empl AND importe>25000

--Tabla 3.6.4.2: Lista de los pedidos superiores a 25000, incluyendo el nombre del cliente que remitió el pedido y el nombre del vendedor asignado a ese cliente.
SELECT Num_pedido,importe,empresa,nombre FROM pedidos,clientes,repventas WHERE clie=num_clie AND Rep_Clie=Num_empl AND importe>25000


--Tabla 3.6.4.3: Lista de los pedidos superiores a 25000, incluyendo el nombre del cliente que remitió el pedido, el vendedor asociado al cliente y la oficina donde trabaja.
SELECT Num_pedido,importe,empresa,nombre,ciudad FROM pedidos,clientes,repventas,oficinas WHERE clie=Num_Clie AND rep_clie=Num_empl AND Oficina_rep=oficina AND importe>25000