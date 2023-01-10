--Practica 13
--Tabla 3.8.2.1: Lista los vendedores con cuota igual o superior al objetivo de Alicante.
SELECT nombre FROM repventas WHERE cuota>=(SELECT objetivo FROM oficinas WHERE ciudad= 'Alicante')

-- Tabla 3.8.2.2: Lista de los clientes atendidos por Belen Aguirre.
SELECT empresa FROM clientes WHERE Rep_Clie=(SELECT Num_empl FROM repventas WHERE nombre='Belen Aguirre')

--Tabla 3.8.2.3: Lista de los productos del fabricante ACI para los cuales las existencias superan a las existencias del producto ACI-41004.
SELECT descripcion,existencias FROM productos WHERE Id_fab='ACI' AND existencias>(SELECT existencias FROM productos WHERE Id_fab='ACI' AND Id_producto='41004')

-- Tabla 3.8.2.4: Lista de los vendedores que trabajan en oficinas que superan su objetivo de ventas.
SELECT nombre FROM repventas WHERE Oficina_rep IN (SELECT oficina FROM oficinas WHERE ventas>objetivo)

--Tabla 3.8.2.5: Lista de empleados que tienen todos sus clientes con limite de credito igual o superior a 50000.
SELECT nombre FROM repventas WHERE Num_empl NOT IN (SELECT Rep_Clie FROM Clientes WHERE Limite_credito<50000)

--Tabla 3.8.2.6: Lista de los clientes que han remitido pedidos del fabricante ACI con productos que empiezan por 4100 entre Enero y Junio de 2000.
SELECT empresa FROM clientes WHERE Num_Clie IN (SELECT DISTINCT clie FROM pedidos 
WHERE fab='ACI'AND producto LIKE '4100%' AND Fecha_pedido BETWEEN '01/01/2000' AND '06/30/2000')

--Tabla 3.8.2.7: Lista de productos para los cuales se ha recibido un pedido mayor o igual a 25000.
SELECT DISTINCT descripcion FROM productos WHERE EXISTS (SELECT num_pedido FROM pedidos WHERE fab=Id_fab AND producto=id_producto AND importe>=25000)

--Tabla 3.8.2.8: Lista de los clientes asignados a ‘Soledad Martinez’ y que no han remitido ningún pedido superior a 3000.
SELECT empresa FROM clientes WHERE Rep_Clie=(SELECT Num_empl FROM repventas WHERE nombre='Soledad Martinez') AND NOT EXISTS
(SELECT *FROM pedidos WHERE clie=Num_Clie AND importe>3000)

--Tabla 3.8.2.9: Oficinas donde la cuota de un vendedor representa más del 55% del objetivo de la oficina.
SELECT ciudad FROM oficinas WHERE EXISTS (SELECT * FROM repventas WHERE Oficina_rep=oficina AND cuota>(0.55*objetivo))

--Tabla 3.8.2.10: Lista de los vendedores que han aceptado un pedido que representa más de su cuota.
SELECT nombre FROM repventas WHERE cuota<ANY (SELECT importe FROM pedidos WHERE rep=Num_empl)
-- Tabla 3.8.2.11: Lista de las oficinas y sus objetivos en donde todos los vendedores tienen ventas que igualan o superan el objetivo de la oficina.
SELECT ciudad,objetivo FROM oficinas WHERE objetivo<ALL (SELECT ventas FROM repventas WHERE Oficina_rep=oficina)