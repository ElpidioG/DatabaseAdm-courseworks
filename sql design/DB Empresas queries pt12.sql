--Practica 12
--Tabla 3.7.9.1: Tamaño de pedido promedio por vendedor para vendedores con pedidos totales de más de 30000.
SELECT rep,AVG(importe) FROM pedidos GROUP BY rep HAVING SUM(importe)>30000

--Tabla 3.7.9.2: Cuota total y ventas totales para todos los vendedores de una oficina en oficinas con dos o más personas.
SELECT ciudad,SUM(cuota),SUM(repventas.ventas) FROM oficinas,repventas WHERE oficina=Oficina_rep GROUP BY ciudad HAVING COUNT(*)>=2

--Tabla 3.7.9.3: Precio, existencias y cantidad total de los pedidos de cada producto para los cuales la cantidad total pedida es superior al 75% de las existencias.
SELECT descripcion,precio,existencias,SUM(Cantidad) FROM productos,pedidos WHERE fab=Id_fab AND producto=Id_producto GROUP BY Id_fab,Id_producto,descripcion,precio,existencias
HAVING SUM(Cantidad)>(0.75*existencias) ORDER BY existencias DESC

--Tabla 3.8.1.1: Ciudades con ventas inferiores al 50% de la suma de las cuotas de los vendedores asignados a dicha ciudad.
SELECT ciudad FROM oficinas WHERE ventas<(SELECT 0.5*SUM(cuota) FROM repventas WHERE oficina_rep=oficina)