-- Práctica 6
--Tabla 3.5.9.1: Productos cuyo precio excede de 2000.
SELECT Id_fab,Id_producto FROM productos WHERE precio>2000

--Tabla 3.5.9.2: Productos de los cuales se ha hecho un pedido mayor de 30000.
SELECT DISTINCT Fab, Producto FROM pedidos WHERE importe>30000

--Tabla 3.5.9.3: Resultado de la unión de las dos consultas anteriores.
SELECT Id_fab,Id_producto FROM productos WHERE precio>2000 UNION SELECT DISTINCT fab,producto FROM pedidos WHERE importe>30000

--Tabla 3.5.9.4: Resultado de la unión de las consultas anteriores conservando las filas repetidas.
SELECT Id_fab,Id_producto FROM productos WHERE precio>2000 UNION ALL SELECT DISTINCT fab,producto FROM pedidos WHERE importe>30000

--Tabla 3.5.9.5: Resultado de la unión de las consultas ordenado por la identificación del producto.
SELECT Id_fab,Id_producto FROM productos WHERE precio>2000 UNION SELECT DISTINCT fab,producto FROM pedidos WHERE importe>30000 ORDER BY 2