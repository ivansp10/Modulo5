/*CREATE TABLE empresa(
	rut CHARACTER VARYING(10) NOT NULL PRIMARY KEY,
	nombre CHARACTER VARYING(120) NOT NULL,
	direccion CHARACTER VARYING(120) NOT NULL,
	telefono CHARACTER VARYING(15) NOT NULL,
	correo CHARACTER VARYING(80) NOT NULL,
	web CHARACTER VARYING(50) NOT NULL
);*/
-- alter table empresa add constraint empresa_pk PRIMARY KEY (rut)
/*
CREATE TABLE cliente(
 	rut CHARACTER VARYING(10) NOT NULL PRIMARY KEY,
	nombre CHARACTER VARYING(120) NOT NULL,
	correo CHARACTER VARYING(80) NOT NULL,
	direccion CHARACTER VARYING(120) NOT NULL,
	celular CHARACTER VARYING(15) NOT NULL,
	alta CHARACTER(1) NOT NULL
);

CREATE TABLE mantencion(
	idmantencion NUMERIC(12) NOT NULL PRIMARY KEY,
	fecha DATE NOT NULL,
	trabajosrealizados CHARACTER VARYING(1000) NOT NULL,
	venta_folio NUMERIC(12)
);

CREATE TABLE venta(
	folio NUMERIC(12) NOT NULL PRIMARY KEY,
	fecha DATE NOT NULL,
	monto NUMERIC(12) NOT NULL,
	vehiculo_idvehiculo NUMERIC(12) NOT NULL,
	cliente_rut CHARACTER VARYING(10) NOT NULL
);
CREATE UNIQUE INDEX venta__idx ON venta(vehiculo_idvehiculo ASC);

CREATE TABLE tipovehiculo(
	idtipovehiculo NUMERIC(12) NOT NULL PRIMARY KEY,
	nombre CHARACTER VARYING(120) NOT NULL
);
CREATE TABLE marca(
	idmarca NUMERIC(12) NOT NULL PRIMARY KEY,
	nombre CHARACTER VARYING(120) NOT NULL
);
CREATE TABLE vehiculo(
	idvehiculo NUMERIC(12) NOT NULL PRIMARY KEY,
	patente CHARACTER VARYING(10) NOT NULL,
	marca CHARACTER VARYING(20) NOT NULL,
	modelo CHARACTER VARYING(20) NOT NULL,
	color CHARACTER VARYING(15) NOT NULL,
	precio NUMERIC(12) NOT NULL,
	frecuenciamantencion NUMERIC(5) NOT NULL,
	marca_idmarca NUMERIC(12) NOT NULL,
	tipovehiculo_idvehiculo NUMERIC(12) NOT NULL
)
*/

/*ALTER TABLE mantencion
	ADD CONSTRAINT vehiculo_marca_fk FOREIGN KEY (venta_folio)
		REFERENCES venta (folio);*/
/*ALTER TABLE vehiculo
	ADD CONSTRAINT vehiculomarca2_fk 
		FOREIGN KEY (tipovehiculo_idvehiculo)
	REFERENCES tipovehiculo (idtipovehiculo);*/
/*
alter table venta
	add constraint venta_cliente_fk foreign key(cliente_rut)
		references cliente(rut);

alter table venta
	add constraint venta_vehiculo_fk foreign key(vehiculo_idvehiculo)
		references vehiculo(idvehiculo);*/

alter table vehiculo
	add constraint vehiculo_marca_fk FOREIGN KEY (marca_idmarca)
		references marca(idmarca);
		

