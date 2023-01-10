
--Llaves Foráneas para establecer relaciones 

alter table empleado
ADD ID_nomina int, constraint FK_IDnomina Foreign key (ID_nomina) references nomina (ID_nomina)

alter table presupuesto
ADD IdDetallePresupuesto int, constraint FK_IdDetallePresupuesto Foreign key (IdDetallePresupuesto) 
references Detalle_Presupuesto (IdDetallePresupuesto)

alter table Empleado
ADD ID_Empresa int, constraint FK_ID_Empresa Foreign key (ID_Empresa) 
references Empresa (ID_Empresa)

alter table empresa
ADD ID_Departamentos int, constraint FK_ID_Departamentos Foreign key (ID_Departamentos) 
references Departamentos (ID_Departamentos)

alter table Seguro_medico
ADD IdPlanseguro int, constraint FK_IdPlanseguro Foreign key (IdPlanseguro) 
references Planes_seguro (IdPlanseguro)


alter table empleado
ADD ID_Expediente int, constraint FK_ID_Expediente Foreign key (ID_Expediente) references Expediente (ID_Expediente)

