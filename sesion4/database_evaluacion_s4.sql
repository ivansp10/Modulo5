-- This script was generated by the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.empresa
(
    rut character varying(10) NOT NULL,
    nombre character varying(120) NOT NULL,
    direccion character varying(120) NOT NULL,
    telefono character varying(15) NOT NULL,
    corrreo character varying(80) NOT NULL,
    web character varying(50) NOT NULL,
    PRIMARY KEY (rut)
);

CREATE TABLE IF NOT EXISTS public.herramienta
(
    idherramienta numeric(12) NOT NULL,
    nombre character varying(120) NOT NULL,
    "precioDia" numeric(12) NOT NULL,
    PRIMARY KEY (idherramienta)
);

CREATE TABLE IF NOT EXISTS public.cliente
(
    rut character varying(10) NOT NULL,
    nombre character varying(120) NOT NULL,
    correo character varying(80) NOT NULL,
    direccion character varying(120) NOT NULL,
    celular character varying(15) NOT NULL,
    PRIMARY KEY (rut)
);

CREATE TABLE IF NOT EXISTS public.arriendo
(
    folio numeric(12) NOT NULL,
    fecha date NOT NULL,
    dias numeric(5) NOT NULL,
    "valorDia" numeric(12) NOT NULL,
    garantia character varying(30) NOT NULL,
    herramienta_idherramienta numeric(12) NOT NULL,
    cliente_rut character varying(10) NOT NULL,
    PRIMARY KEY (folio)
);

ALTER TABLE IF EXISTS public.arriendo
    ADD FOREIGN KEY (herramienta_idherramienta)
    REFERENCES public.herramienta (idherramienta) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.arriendo
    ADD FOREIGN KEY (cliente_rut)
    REFERENCES public.cliente (rut) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;