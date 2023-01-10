-- Practica 10

--Tabla 3.7.1.1: Cuotas y ventas totales.
SELECT SUM(cuota),SUM(ventas) FROM repventas

--Tabla 3.7.1.2: Total de pedidos aceptados por el empleado Belen Aguirre.
SELECT SUM(importe) FROM pedidos,repventas WHERE nombre='Belen Aguirre' AND rep=Num_empl

--Tabla 3.7.2.1: Precio promedio de los productos del fabricante ‘ACI’.
SELECT AVG(precio) FROM productos WHERE Id_fab='ACI' 


--Tabla 3.7.2.2: Precio medio del pedido ordenado por el cliente 2103.
SELECT AVG(importe) FROM pedidos WHERE clie=2103

--Tabla 3.7.3.1: Cuotas mínima y máxima asignadas a los vendedores.
SELECT MIN(cuota),MAX(cuota) FROM repventas

--Tabla 3.7.3.2: Fecha del pedido más antiguo en la base de datos.
SELECT MIN(Fecha_pedido) FROM pedidos

--Tabla 3.7.3.3: Mejor rendimiento de todos los vendedores.
SELECT MAX(100*ventas/cuota) FROM repventas


--Tabla 3.7.3.4: Primer y último vendedor por orden alfabético.
SELECT MIN(nombre),MAX(nombre) FROM repventas

--Tabla 3.7.4.1: Número de clientes.
SELECT COUNT(Num_Clie) FROM clientes

--Tabla 3.7.4.2:Número de vendedores que superan su cuota.
SELECT COUNT(nombre) FROM repventas WHERE ventas>cuota

--Tabla 3.7.4.3: Número de pedidos de más de 25000.
SELECT COUNT(importe) FROM pedidos WHERE importe>25000

--Tabla 3.7.4.4: Número de pedidos de más de 25000.
SELECT COUNT(*) FROM pedidos WHERE importe>25000

--Tabla 3.7.5.1: Diversos porcentajes de la base de datos.
SELECT AVG(importe),SUM(importe),AVG(100*importe/Limite_credito), AVG(100*importe/cuota) FROM pedidos,clientes,repventas WHERE clie=Num_Clie AND rep=Num_empl

--Tabla 3.7.6.1: Ejemplo de funciones de columna con valores NULL.
SELECT COUNT(*),COUNT(ventas),COUNT(cuota) FROM repventas

--Tabla 3.7.6.2: Uso de la función SUM con valores NULL.
SELECT SUM(ventas),SUM(cuota),SUM(ventas)-SUM(cuota),SUM(ventas-cuota) FROM repventas

--Tabla 3.7.7.1: Número de títulos diferentes de los vendedores.
SELECT COUNT(DISTINCT titulo) FROM repventas

--Tabla 3.7.7.2: Número de oficinas con vendedores que superan sus cuotas.
SELECT COUNT(DISTINCT Oficina_rep) FROM repventas WHERE ventas>cuota