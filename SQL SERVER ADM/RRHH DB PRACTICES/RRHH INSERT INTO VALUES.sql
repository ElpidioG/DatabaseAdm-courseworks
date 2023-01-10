
--DEPARTAMENTO
INSERT INTO Departamentos
                         (ID_Departamentos, Departamentos, Descripcion, Telefono, Email, Fecha_Inicio)
VALUES        (1, 'Contabilidad', 'Departamento contable', '809-989-6765', 'contabilidad@rrhh.com', '2021-02-19')

INSERT INTO Departamentos
                         (ID_Departamentos, Departamentos, Descripcion, Telefono, Email, Fecha_Inicio)
VALUES        (2, 'Marketing', 'Departamento de Marketing', '809-989-6735', 'marketing@rrhh.com', '2021-02-18')

INSERT INTO Departamentos
                         (ID_Departamentos, Departamentos, Descripcion, Telefono, Email, Fecha_Inicio)
VALUES        (3, 'Comercial', 'Departamento Comercial', '809-989-6725', 'Comercios@rrhh.com', '2021-02-18')

INSERT INTO Departamentos
                         (ID_Departamentos, Departamentos, Descripcion, Telefono, Email, Fecha_Inicio)
VALUES        (4, 'Dirección General', 'Departamento de dirección general', '809-989-6759', 'Direccióngeneral@rrhh.com','2021-02-18')

INSERT INTO Departamentos
                         (ID_Departamentos, Departamentos, Descripcion, Telefono, Email, Fecha_Inicio)
VALUES        (5, 'Logística y Operaciones', 'Departamento de Logística y Operaciones', '809-989-6719', 'LogísticayOperaciones@rrhh.com', '2021-02-18')


--

-- USUARIO
Insert into Usuario(Nombre_usuario, Contraseña)
VALUES ('ViticoF', 'ElVitico123')
INSERT INTO Usuario(Nombre_usuario, Contraseña)
VALUES ('PapoloR', 'Prodriguez724')
Insert INTO Usuario(Nombre_usuario, ContraseñA)
VALUES ('AngelR', 'Rosario5592')
Insert INTO Usuario(Nombre_usuario, Contraseña)
VALUES ('DelgadoE', 'Encarnacion23')
Insert into Usuario(Nombre_usuario, Contraseña)
VALUES ('JeroM', 'Cifre16')



INSERT 
INTO Categorias(Idcategoria, Nombre_categoria, Descripcion)
VALUES (1, 'Gerente', 'El que manda')
INSERT 
INTO Categorias(Idcategoria, Nombre_categoria, Descripcion)
VALUES (2, 'Subgerente', 'Si el gerente falta, el lo suplanta')
INSERT 
INTO Categorias(Idcategoria, Nombre_categoria, Descripcion)
VALUES (3, 'Secretaria', 'Es la ayudante del gerente')
INSERT 
INTO Categorias(Idcategoria, Nombre_categoria, Descripcion)
VALUES (4, 'Conserje', 'Es el encargado de la limpieza')
INSERT
INTO Categorias(Idcategoria, Nombre_categoria, Descripcion)
VALUES (5, 'Analista', 'Analiza un problema e intenta solucionarlo')


INSERT INTO EXPEDIENTE( Nivel_de_estudio, Carrera, Universidad, HabilidadesExtras, Experiencia_laboral, Referencias_laboral, Examen_Psicologico, Examen_de_actitud, IdCursos)
VALUES ('universidad','Diseño Grafico', 'PUCMM', 'Control de Adobe', '4 años', 'gran diseñador',1,1,20)

INSERT INTO EXPEDIENTE(Nivel_de_estudio, Carrera, Universidad, HabilidadesExtras, Experiencia_laboral, Referencias_laboral, Examen_Psicologico, Examen_de_actitud, IdCursos)
VALUES ('Bachillerato', 'no cursada', 'no cursada', 'Control de aseo', '1 años', 'limpia bien',2,2,21)

INSERT INTO EXPEDIENTE( Nivel_de_estudio, Carrera, Universidad, HabilidadesExtras, Experiencia_laboral, Referencias_laboral, Examen_Psicologico, Examen_de_actitud, IdCursos)
VALUES ('Maestria', 'control monetario', 'Intec', 'alto nivel de matematicas', '10 años', 'alto control de las unidades',3,3,22)

INSERT INTO EXPEDIENTE(Nivel_de_estudio, Carrera, Universidad, HabilidadesExtras, Experiencia_laboral, Referencias_laboral, Examen_Psicologico, Examen_de_actitud, IdCursos)
VALUES ('universidad', 'traduccion', 'APEC', 'control de 4 idiomas', '3 años', 'traduccion fluida',4,4,23)

INSERT INTO EXPEDIENTE(Nivel_de_estudio, Carrera, Universidad, HabilidadesExtras, Experiencia_laboral, Referencias_laboral, Examen_Psicologico, Examen_de_actitud, IdCursos)
VALUES ('universidad', 'ingenieria en sistema', 'UASD', 'control varios idiomas de programacion', '6 años', 'excelente programador',5,5,24)



INSERT
INTO   Cursos( NombreCursos, Instituto, Fechainicio, Fechafin)
VALUES     ( 'Ingles', 'Apec', '2016/05/02 ', '2020/06/22')
INSERT
INTO   Cursos( NombreCursos, Instituto, Fechainicio, Fechafin)
VALUES     ( 'Frances', 'Alianza Francesa', '2015/08/09 ', '2019/11/22')
INSERT
INTO   Cursos( NombreCursos, Instituto, Fechainicio, Fechafin)
VALUES     ( 'Programacion', 'Intec', '2019/9/14 ', '2021/07/23')
INSERT
INTO   Cursos( NombreCursos, Instituto, Fechainicio, Fechafin)
VALUES     ( 'Portugues', 'Academia de Lenguas', '2020/10/14 ', '2022/12/30')
INSERT
INTO   Cursos( NombreCursos, Instituto, Fechainicio, Fechafin)
VALUES     ( 'Administracion', 'INFOTEP', '2019/11/25', '2021/08/13')



INSERT
INTO              Empresa(Nombre, Fecha_de_creacion, Descripcion, Telefono, Direccion, Email, ID_presupuesto)
VALUES        ('Asesores de Recursos Humanos Ollorrased','01-01-1974', 'Asesoría de recursos humanos en Santo Domingo', '809-555-5555', 'Calle 1ra, Santo Domingo', 'ollorased@humano.com', 1000)

INSERT
INTO              Empresa(Nombre, Fecha_de_creacion, Descripcion, Telefono, Direccion, Email, ID_presupuesto)
VALUES        ('M&M Evaluaciones Empresariales', '01-20-1999', 'Asesoría de recursos humanos en Santo Domingo', '809-897-5555', 
                         'John F. Kennedy, Plaza Haché, segundo nivel, local 219, Ensanche Naco, Santo Domingo, República Dominicana, Santo Domingo 10123', 'evalu@ciones.com', 1001)

                         INSERT
INTO              Empresa(Nombre, Fecha_de_creacion, Descripcion, Telefono, Direccion, Email, ID_presupuesto)
VALUES        ('Bextro Consultora', '10-08-1999', 'Asesoría de recursos humanos en Santo Domingo', '809-533-4188', 'Avenida Rómulo Betancourt, Santo Domingo', 'bextroconsul@humanos.com', 1002)

INSERT
INTO              Empresa(Nombre, Fecha_de_creacion, Descripcion, Telefono, Direccion, Email, ID_presupuesto)
VALUES        ('RHCA Recursos Humanos', '01-08-2012', 'Asesoría de recursos humanos en Santo Domingo', '809-724-3674', 
                         'Plaza Dhayoma, Av Juan Pablo Duarte, Santiago De Los Caballeros 51000', 'rhca@rhca.com', 1003)

                         INSERT	
INTO              Empresa
VALUES        ('People Group Dominicana','2012-05-05', 'Asesoria de recursos humanos en Santo Domingo',
'8090007777', 'Av Jardines de Fontainebleau Local 21A, Santo Domingo 10602', 'people@rhca.com', 1004)


INSERT  INTO  DETALLE_PRESUPUESTO(IdDepartamento, Monto, Fecha, Estado)
VALUES(1, 23000, CONVERT (DATETIME, '2021-03-02 00:00:00'), 'Declinada')

    INSERT  INTO  DETALLE_PRESUPUESTO(IdDepartamento, Monto, Fecha, Estado)
    values
       ( 2, 19000, CONVERT (DATETIME, '2021-07-02 00:00:00'), 'Aceptado')

    INSERT  INTO  DETALLE_PRESUPUESTO(IdDepartamento, Monto, Fecha, Estado)
    values
        (3, 25000, CONVERT (DATETIME, '2021-02-28 00:00:00'),  'Denagado')
        INSERT  INTO  DETALLE_PRESUPUESTO(IdDepartamento, Monto, Fecha, Estado)
        values
        ( 4, 2300, CONVERT (DATETIME, '2021-04-08 00:00:00'), 'Denagado')
        INSERT  INTO  DETALLE_PRESUPUESTO(IdDepartamento, Monto, Fecha, Estado)
        values
        (5, 37000, CONVERT (DATETIME, '2021-04-22 00:00:00'), 'Aceptada')

INSERT INTO Presupuesto( Fecha, MontoPresupuesto, Descripcion, IdDetallePresupuesto)
VALUES ('2019-01-10', $50000, 'Tiene un presupuesto de 50k', 1)

INSERT INTO Presupuesto(Fecha, MontoPresupuesto, Descripcion, IdDetallePresupuesto)
VALUES ('2019-07-11', $59000, 'Tiene un presupuesto de 59k', 2)

INSERT INTO Presupuesto(Fecha, MontoPresupuesto, Descripcion, IdDetallePresupuesto)
VALUES ('2019-04-12', $79000, 'Tiene un presupuesto de 79k', 3)

INSERT INTO Presupuesto(Fecha, MontoPresupuesto, Descripcion, IdDetallePresupuesto)
VALUES ('2020-09-09', $99000, 'Tiene un presupuesto de 99k', 4)

INSERT INTO Presupuesto(Fecha, MontoPresupuesto, Descripcion, IdDetallePresupuesto)
VALUES ('2020-10-12', $109000, 'Tiene un presupuesto de 109k', 5)



Empleado
INSERT INTO Empleado ( Nombre_Empleado, Apellido_Empleado, Fecha_Nacimiento, Telefono, Direccion, Puesto, Email, ID_nomina, ID_Empresa, ID_Expediente, IDcategoria, Id_usuario, IDseguro)
VALUES ('Carla', 'Salomón Fermín', '1993-01-05', '809-568-7845', 'Calle 23n.7', 'Técnico personal', 'CarlaSA@hotmail.com', 100, 1150, 11, 1, 1,7)



INSERT INTO Empleado ( Nombre_Empleado, Apellido_Empleado, Fecha_Nacimiento, Telefono, Direccion, Puesto, Email, ID_nomina, ID_Empresa, ID_Expediente, IDcategoria, Id_usuario, IDseguro) 
VALUES ( 'Alfredo', 'Pimentel Asua','1995-07-13', '809-909-5325', 'Av.25deNov Calle25', 'talent manager', 'AlfredoPi@hotmail.com', 102, 1160, 13, 3, 3,9)

INSERT INTO Empleado ( Nombre_Empleado, Apellido_Empleado, Fecha_Nacimiento, Telefono, Direccion, Puesto, Email, ID_nomina, ID_Empresa, ID_Expediente, IDcategoria, Id_usuario, IDseguro)
VALUES ('Eliza', 'Resor Mane', '1999-12-07', '849-912-5489', 'Calle54 esq.sareto', 'administrador de personal', 'Eresor@hotmail.com', 103, 1165, 14, 4, 4,10)
 
INSERT INTO Empleado ( Nombre_Empleado, Apellido_Empleado, Fecha_Nacimiento, Telefono, Direccion, Puesto, Email, ID_nomina, ID_Empresa, ID_Expediente, IDcategoria, Id_usuario, IDseguro)
VALUES ('Guillermo', 'Marquez tarel', '1991-03-16', '829-721-1189', 'esq.Ureña Calle 103', 'Técnico de comunicación', 'GuilleMA@hotmail.com', 104, 1170, 15, 5, 5,11)










Insert into SEGURO_MEDICO(Seguro, Contacto, Correo, Direccion, FechaContrato, IdPlanSeguro)
VALUES (N'1204', N'809456123', N'elpepe@gmail.com', N'Calle Cayetano Rodríguez 154, ', '2000-10-12 ', 1)


Insert into SEGURO_MEDICO(Seguro, Contacto, Correo, Direccion, FechaContrato, IdPlanSeguro)
VALUES (N'103', N'8095675454', N'marco@gmail.com', N'Guachupita 12', '2020-10-12 ', 2)


Insert into  SEGURO_MEDICO(Seguro, Contacto, Correo, Direccion, FechaContrato, IdPlanSeguro)
VALUES (N'103', N'8094752554', N'predro@gmail.com', N'Guachupita 5', '2020-09-11 ', 3)


Insert into  SEGURO_MEDICO(Seguro, Contacto, Correo, Direccion, FechaContrato, IdPlanSeguro)
VALUES (N'104', N'8095475454', N'predro@gmail.com', N'Guachupita 8', '2020-11-12 ', 4)


Insert into  SEGURO_MEDICO(Seguro, Contacto, Correo, Direccion, FechaContrato, IdPlanSeguro)
VALUES (N'105', N'8094752464', N'predro@gmail.com', N'Guachupita 8', '2020-12-10 ', 5)