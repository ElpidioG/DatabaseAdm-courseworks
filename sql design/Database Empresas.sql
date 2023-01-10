--Creando bd
create database Empresa
--Creando tablas
create table OFICINAS (Oficina int  not null, Ciudad varchar (50), Region varchar(50), Dir int, Objetivo float, Ventas float)
create table REPVENTAS (Num_empl int not null, Nombre varchar(50), Edad int , Oficina_rep int, Titulo varchar(50), Contrato date, Director int, Cuota float, Ventas float)
Create table Clientes (Num_Clie int not null, Empresa varchar (50), Rep_Clie int, Limite_credito int);
create table PRODUCTOS (Id_fab varchar(50) not null, Id_producto varchar(50) not null, Descripcion varchar(50), Precio float, Existencias int)
create table PEDIDOS (Num_pedido int not null, Fecha_pedido date, Clie int, Rep int, Fab varchar(50), Producto varchar(50), Cantidad int, Importe float)

--Llaves primarias
alter table OFICINAS add primary key (Oficina)
alter table CLIENTES add primary key (Num_clie)
alter table REPVENTAS add primary key (Num_empl)
alter table PRODUCTOS add primary key (Id_fab, id_producto)
alter table PEDIDOS add primary key (Num_pedido)


--Llaves foráneas
alter table OFICINAS add foreign key (dir) REFERENCES REPVENTAS (Num_empl)
alter table CLIENTES add foreign key (Rep_clie) REFERENCES REPVENTAS (Num_empl)
alter table REPVENTAS add foreign key (Oficina_rep) REFERENCES OFICINAS (Oficina)
alter table REPVENTAS add foreign key (Director) REFERENCES REPVENTAS (Num_empl)
alter table PEDIDOS add foreign key (fab, producto) REFERENCES PRODUCTOS (Id_fab, id_producto)
alter table PEDIDOS add foreign key (fab, producto) REFERENCES PRODUCTOS (Id_fab, id_producto)
alter table PEDIDOS add foreign key (clie) REFERENCES Clientes (Num_clie)
alter table PEDIDOS add foreign key (REP) REFERENCES REPVENTAS (NUM_empl)

insert into Oficinas (oficina, ciudad, region, dir, objetivo, ventas)
values
(22, 'Toledo', 'Centro', 108, 27.500, 34432),
(11,'Valencia', 'Este', 106, 52.500, 40063),
(12,'Barcelona', 'Este', 104, 70.000, 29328),
(13,'Alicante', 'Este', 105, 30.000, 29327),
(21,'Madrid', 'Centro', 108, 60.000, 81309);

insert into Repventas (NUM_EMPL, nombre, edad, oficina_rep, titulo, contrato, 
 director, cuota, ventas)
 values
 (106, 'Jose Maldonado', 52, 11, 'VP Ventas', '06/14/1998', NULL, 25000, 32958),
 (104, 'Carlos Martinez', 33, 12, 'Dir. Ventas', '06/19/1997', 106, 17500, 0),
 (105, 'Belen Aguirre', 37, 13, 'Dir. Ventas', '02/12/1998', 104, 30000, 39327),
 (109, 'Maria Garcia', 31, 11, 'Rep. Ventas', '10/12/1999', 106, 27500, 7105),
 (108, 'Lorenzo Fernandez', 62, 21, 'Dir. Ventas', '10/12/1999', 106, 30000, 58533),
 (102, 'Soledad Martinez', 48, 21, 'Rep. Ventas', '12/10/1996', 108, 30000, 22776),
 (101, 'Daniel Gutierrez', 45,	12, 'Rep. Ventas', '10/20/1996', 104, 27500, 26628),
 (110, 'Antonio Valle', 41, NULL, 'Rep Ventas', '01/13/2000', 101, NULL, 23.123),
 (103, 'Pedro Cruz', 29, 12, 'Rep. Ventas', '01/03/1997', 104, 25500, 2700),
 (107, 'Natalia Martin', 49, 22, 'Rep. Ventas', '11/14/1998', 108, 27500, 34432);

 insert into Pedidos  
 values
 (112961, '12/17/1999', 2117, 106, 'REI', '2A44L', 7, 31500),
 (113012, '01/11/2000', 2111, 105, 'ACI', '41003', 35, 3745),
 (112989, '01/03/2000', 2101, 106, 'FEA', '114', 6, 1458),
 (113051, '02/10/2000', 2118, 108, 'QSA', 'XK47', 4, 1420),
 (112968, '10/12/1999', 2102, 101, 'ACI', '41004', 34, 3978),
 (110036, '01/30/2000', 2107, 110, 'ACI', '4100Z', 9, 22500),
 (113045, '02/02/2000', 2112, 108, 'REI', '2A44R', 10, 45000),
 (112963, '12/17/1999', 2103, 105, 'ACI', '41004', 28, 3276),
 (113013, '01/14/2000', 2118, 108, 'BIC', '41003', 1, 652),
 (113058, '02/23/2000', 2108, 109, 'FEA', '112', 10, 1480),
 (112997, '01/08/2000', 2124, 107, 'BIC', '41003', 1, 652),
 (112983, '12/27/1999', 2103, 105, 'ACI', '41004', 6, 702),
 (113024, '01/20/2000', 2114, 108, 'QSA', 'XK47', 20, 7100),
 (113062, '02/24/2000', 2124, 107, 'FEA', '114', 10, 2430),
 (112979, '10/12/1999', 2114, 102, 'ACI', '4100Z', 6, 15000),
 (113027, '02/22/2000', 2103, 105, 'ACI', '41002', 54, 4104),
 (113007, '01/08/2000', 2112, 108, 'IMM', '773C', 3, 2825),
 (113069, '03/02/2000', 2109, 107, 'IMM', '775C', 22, 31350),
 (113034, '01/29/2000', 2107, 110, 'REI', '2A45C', 8, 632),
 (112992, '11/04/1999', 2118, 108, 'ACI', '41002', 10, 760),
 (112975, '10/12/1999', 2111, 102, 'REI', '2A44G', 6, 2100),
 (113055, '02/15/2000', 2108, 101, 'ACI', '4100X', 6, 150),
 (113048, '02/10/2000', 2120, 102, 'IMM', '779C', 2, 3750),
 (113093, '01/04/2000', 2106, 102, 'REI', '2A45C', 24, 1896),
 (112965, '02/27/2000', 2106, 102, 'QSA', 'XK47', 6, 2130),
 (113003, '01/25/2000', 2108, 109, 'IMM', '779C', 3, 5625),
 (113049, '02/10/2000', 2118, 108, 'QSA', 'XK47', 2, 776),
 (112987, '12/31/1999', 2103, 105, 'ACI', '4100Y', 11, 27500),
 (113057, '02/18/2000', 2111, 103, 'ACI', '4100X', 24, 600),
 (113042, '02/02/2000', 2113, 101, 'REI', '2A44R', 5, 22500);


 insert into Productos
 values

('REI', '2A45C', 'V Stago Trinquete', 79, 210),
('ACI', '4100Y', 'Extractor', 2750, 25),
('QSA', 'XK47', 'Reductor', 355, 38),
('BIC', '41672', 'Plate', 180, 0),
('IMM', '779C', 'Riostra 2-Tm', 1875, 9),
('ACI', '41003', 'Articulo Tipo 3', 107, 207),
('ACI', '41004', 'Articulo Tipo 4', 117, 139),
('BIC', '41003', 'Manivela', 652, 3),
('IMM', '887P', 'Perno Riostra', 250, 24),
('QSA', 'XK48', 'Reductor', 134, 203),
('REI', '2A44L', 'Bisagra Izqda', 4500, 12),
('FEA', '112', 'Cubierto', 148, 115),
('IMM', '887H', 'Soporte Riostra', 54, 223),
('BIC', '41089', 'Reten', 225, 78),
('ACI', '41001', 'Articulo Tipo 1', 55, 277),
('IMM', '775C', 'Riostra 1-Tm', 1425, 5),
('ACI', '4100Z', 'Montador', 2500, 28),
('QSA', 'XK48A', 'Reductor', 117, 27),
('ACI', '41002', 'Articulo Tipo 2', 76, 167),
('REI', '2A44R', 'Bisagra Dcha', 4500, 12),
('IMM', '773C', 'Riostra 1/2-Tm', 975, 28),
('ACI', '4100X', 'Ajustador', 25, 37),
('FEA', '114', 'Bancada Motor', 243, 15),
('IMM', '887X', 'Retenedor Riostra', 475, 32),
('REI', '2A44G', 'Pasador Bisagra', 350, 14);

insert into Clientes
values
(2111, 'EVBE S.A.', 103, 50000),
(2102, 'Exclusivas del Este S.L.', 101, 65000),
(2103, 'Pino S.L.', 105, 50000),
(2123, 'Hnos. Martinez S.A.', 102, 4000),
(2107, 'Distribuciones Sur S.A.', 110, 35000),
(2115, 'AFS S.A.', 101, 20.000),
(2101, 'Exclusivas Soriano S.A.', 106, 65.000),
(2112, 'Lopez Asociados S.L.', 108, 50000), 
(2121, 'Hernandez & Hijos SL.', 103, 45000), 
(2114, 'Componentes Fernandez S.A.', 102, 20000), 
(2124, 'Domingo S.L', 107, 40.000), 
(2108, 'Zapater Importaciones S.A.', 109, 55000),
(2117, 'Hnos.Ramos S.L.', 106, 35000), 
(2122, 'JPF S.L.', 105, 30.000), 
(2120, 'Distribuciones Montiel S.L.', 102, 50000),
(2106, 'Construcciones Leon S.A.', 102, 65000), 
(2119, 'Martinez & Garcia S.L.', 109, 25000), 
(2118, 'Exclusivas Norte S.A.', 108, 60000), 
(2113, 'Importaciones Martin S.L', 104, 20000), 
(2109, 'Roda & Castedo S.L.', 103, 25000), 
(2105, 'MALB S.A.', 101, 45000);
