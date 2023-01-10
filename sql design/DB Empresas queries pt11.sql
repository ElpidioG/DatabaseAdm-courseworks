
--Practica 11
--Tabla 3.7.8.1: Tamaño medio de los pedidos para cada vendedor.
SELECT rep,AVG(importe) FROM pedidos GROUP BY rep

--Tabla 3.7.8.2: Rango de cuotas asignadas a cada oficina.
SELECT Oficina_rep,MIN(cuota),MAX(cuota) FROM repventas GROUP BY Oficina_rep

--Tabla 3.7.8.3: Número de vendedores asignados a cada oficina.
SELECT Oficina_rep,COUNT(*) FROM repventas GROUP BY Oficina_rep

--Tabla 3.7.8.4: Número de clientes diferentes atendidos por cada vendedor.
SELECT COUNT(DISTINCT Num_Clie),Rep_Clie FROM clientes GROUP BY Rep_Clie

--Tabla 3.7.8.5: Pedidos totales por cliente y vendedor.
SELECT rep,clie,SUM(importe) FROM pedidos GROUP BY rep,clie

--Error: La columna ‘nombre’ no es una expresión GROUP BY
SELECT Num_empl,nombre,SUM(importe) FROM pedidos,repventas WHERE rep=Num_empl GROUP BY Num_empl

--Tabla 3.7.8.6: Pedidos totales por cada vendedor.
SELECT Num_empl,nombre,SUM(importe) FROM pedidos,repventas WHERE rep=Num_empl GROUP BY Num_empl,nombre