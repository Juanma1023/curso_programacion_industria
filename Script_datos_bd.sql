insert into tipo_cuenta (id, tipo_cuenta) values ('1','Ahorros');
insert into tipo_cuenta (id, tipo_cuenta) values ('2','Credito');

insert into cuentas (id,id_tipo_cuenta, monto_cuenta, fecha_creacion) values ('1111111','1','40000000',	'2021-10-23');
insert into cuentas (id,id_tipo_cuenta, monto_cuenta, fecha_creacion) values ('2222222','1','50000000',	'2021-12-11');
insert into cuentas (id,id_tipo_cuenta, monto_cuenta, fecha_creacion) values ('3333333','1','590000','2021-10-01');
insert into cuentas (id,id_tipo_cuenta, monto_cuenta, fecha_creacion) values ('4444444','1','312123.25','2021-10-25');

insert into clientes (id, nombre, direccion_residencia, fecha_nacimiento, telefono,cuenta_bancaria) values ('123','Juan Manuel Castro','La ceja Antioquia','10/4/2000','31212312','1111111');
insert into clientes (id, nombre, direccion_residencia, fecha_nacimiento, telefono,cuenta_bancaria) values ('1234','Andres Castro','Medellin','11/5/2000','31212312','2222222');
insert into clientes (id, nombre, direccion_residencia, fecha_nacimiento, telefono,cuenta_bancaria) values ('12345','julian Castro','Medellin','2/12/2000','31212312','3333333');
insert into clientes (id, nombre, direccion_residencia, fecha_nacimiento, telefono,cuenta_bancaria) values ('123456','Pepito Castro','Rionegro','3/11/2000','31212312','4444444');

insert into tipo_sedes (id, tipo_sede) values('1','Nacional');
insert into tipo_sedes (id, tipo_sede) values('2','Exterior');

insert into sedes (id_tipo_sede, ciudad, direccion_sede, telefono) values ('1','Medellin', '131 Pine View Trail', '9436115');
insert into sedes (id_tipo_sede, ciudad, direccion_sede, telefono) values ('1','Cartagena', '3333 Packers Junction', '5123978');
insert into sedes (id_tipo_sede, ciudad, direccion_sede, telefono) values ('1','La ceja Antioquia', '5 Fairview Lane', '7580962');
insert into sedes (id_tipo_sede, ciudad, direccion_sede, telefono) values ('1','Rionegro', '5 Hauk Parkway', '4487684');

insert into cargos (id, nombre_cargo) values ('001','Asesor');
insert into cargos (id, nombre_cargo) values ('002','Administrador');
insert into cargos (id, nombre_cargo) values ('003','Gerente');

insert into empleados (id, nombre, direccion_residencia, telefono, fecha_nacimiento, id_cargo, sede_trabajo) values ('537549594', 'Michelle', '14 Orin Way', '4398925', '6/6/2022', '1',  '1');
insert into empleados (id, nombre, direccion_residencia, telefono, fecha_nacimiento, id_cargo, sede_trabajo) values ('140691066', 'Bran', '98269 Birchwood Road', '0832974', '1/12/2022', '2', '2');
insert into empleados (id, nombre, direccion_residencia, telefono, fecha_nacimiento, id_cargo, sede_trabajo) values ('036544203', 'Deane', '3772 Grayhawk Avenue', '3640543', '10/20/2021', '1', '4');


insert into bancos (nombre_banco, direccion_banco, telefono) values ('Bancolombia', '917 Mifflin Alley', '2546486');
insert into bancos (nombre_banco, direccion_banco, telefono) values ('Banco de Bogota', '1 Mockingbird Drive', '2280997');
insert into bancos (nombre_banco, direccion_banco, telefono) values ('Banco Agrario', '7409 Independence Pass', '4995470');
insert into bancos (nombre_banco, direccion_banco, telefono) values ('Davivienda', '77525 Farragut Street', '2814067');


insert into transacciones (id, monto_transaccion ,cuenta_llegada ,cuenta_salida ,id_usuario ,banco_transferencia ,fecha_transaccion ,sede_origen )
	values ('12345','1000000','3123124','1111111','123','1','2022-01-01','1');
insert into transacciones (id, monto_transaccion ,cuenta_llegada ,cuenta_salida ,id_usuario ,banco_transferencia ,fecha_transaccion ,sede_origen )
	values ('12346','10000','3123124','1111111','123','1','2022-02-01','1');
insert into transacciones (id, monto_transaccion ,cuenta_llegada ,cuenta_salida ,id_usuario ,banco_transferencia ,fecha_transaccion ,sede_origen )
	values ('12347','50000','12361342','1111111','123','1','2022-02-10','1');
insert into transacciones (id, monto_transaccion ,cuenta_llegada ,cuenta_salida ,id_usuario ,banco_transferencia ,fecha_transaccion ,sede_origen )
	values ('12348','12000000','12324123','2222222','1234','1','2022-01-01','1');
insert into transacciones (id, monto_transaccion ,cuenta_llegada ,cuenta_salida ,id_usuario ,banco_transferencia ,fecha_transaccion ,sede_origen )
	values ('12349','190000','1274123','2222222','1234','1','2022-03-01','1');
insert into transacciones (id, monto_transaccion ,cuenta_llegada ,cuenta_salida ,id_usuario ,banco_transferencia ,fecha_transaccion ,sede_origen )
	values ('12350','10000','3123124','1111111','123','1','2022-01-07','1');
