--Tabla 3.5.7.1: Vendedores por debajo de la cuota o con ventas inferiores a 30000.
SELECT nombre,cuota,ventas FROM repventas WHERE ventas < cuota OR ventas < 30000.00

--Figura 3.5.7.2: Vendedores por debajo de la cuota y con ventas inferiores a 20000.
SELECT nombre,cuota ,ventas FROM repventas WHERE ventas < cuota AND ventas < 20000.00

--Tabla 3.5.7.3: Vendedores que están por debajo de la cuota y con ventas no superiores a 5000.
SELECT nombre,cuota,ventas FROM repventas WHERE ventas < cuota AND NOT ventas > 5000.00

--Tabla 3.5.7.4: Vendedores con ventas inferiores a la cuota y edad mayor de 45 años o con ventas inferiores a 5000.
SELECT nombre,edad FROM repventas WHERE (ventas < cuota AND edad > 45) OR ventas < 5000.00

--Tabla 3.5.8.1: Ventas de cada oficina, ordenadas en orden alfabético por región, y dentro de cada región por ciudad.
SELECT ciudad,region,ventas FROM oficinas ORDER BY region,ciudad

--Figura 3.5.8.2: Lista de las oficinas clasificadas en orden descendente de ventas.
SELECT ciudad,region,ventas FROM oficinas ORDER BY ventas DESC

--Figura 3.5.8.3: Lista de las oficinas clasificadas en orden descendente de rendimiento de ventas.
SELECT ciudad,region,(ventas-objetivo) FROM oficinas ORDER BY 3 DESC

