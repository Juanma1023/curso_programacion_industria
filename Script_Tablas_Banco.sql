CREATE TABLE IF NOT EXISTS public.bancos
(
    id serial NOT NULL,
    nombre_banco varchar(50),
    direccion_banco varchar(100),
    telefono integer,
    CONSTRAINT bancos_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.cargos
(
    id integer NOT null,
    nombre_cargo varchar(100),
    CONSTRAINT cargos_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.tipo_cuenta
(
    id serial NOT NULL,
    tipo_cuenta varchar(100),
    CONSTRAINT tipo_cuenta_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.cuentas
(
    id serial NOT NULL,
    id_tipo_cuenta serial,
    monto_cuenta decimal(10,2),
    fecha_creacion date,
    fecha_caducidad date,
    CONSTRAINT cuentas_pkey PRIMARY KEY (id),
    CONSTRAINT cuentas_tipo_fkey FOREIGN KEY (id_tipo_cuenta)
        REFERENCES public.tipo_cuenta (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

CREATE TABLE IF NOT EXISTS public.clientes
(
    id integer NOT NULL,
    nombre varchar(100),
    direccion_residencia varchar(100),
    fecha_nacimiento date,
    telefono integer,
    id_cuenta serial,
    CONSTRAINT clientes_pkey PRIMARY KEY (id),
    CONSTRAINT clientes_cuentas_fkey FOREIGN KEY (id_cuenta) REFERENCES public.cuentas (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

CREATE TABLE IF NOT EXISTS public.tipo_sedes
(
    id serial not null,
    tipo_sede varchar(50),
    CONSTRAINT tipo_sedes_pkey PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS public.sedes
(
    id serial NOT NULL,
    id_tipo_sede serial,
    ciudad varchar(100),
    direccion_sede varchar(100),
    telefono integer,
    CONSTRAINT sedes_pkey PRIMARY KEY (id),
     CONSTRAINT sedes_tipo_fkey FOREIGN KEY (id_tipo_sede)
        references public.tipo_sedes (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT valid
);


CREATE TABLE IF NOT EXISTS public.empleados
(
    id integer NOT NULL,
    nombre varchar(100),
    direccion_residencia varchar(100),
    telefono integer,
    fecha_nacimiento date,
    id_cargo integer,
    id_sede serial,
    CONSTRAINT empleados_pkey PRIMARY KEY (id),
    CONSTRAINT empleados_cargos_fkey FOREIGN KEY (id_cargo)
        REFERENCES public.cargos (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT empleados_sedes_fkey FOREIGN KEY (id_sede)
        REFERENCES public.sedes (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT valid
);

CREATE TABLE IF NOT EXISTS public.transacciones
(
    id integer NOT NULL,
    monto_transaccion decimal(10,2),
    id_cuenta_llegada integer,
    id_cuenta integer,
    id_clientes integer,
    id_banco serial,
    fecha_transaccion date,
    sede_origen serial,
    CONSTRAINT transacciones_pkey PRIMARY KEY (id),
    CONSTRAINT transacciones_bancos_fkey FOREIGN KEY (id_banco)
        REFERENCES public.bancos (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT transacciones_clientes_fkey FOREIGN KEY (id_clientes)
        REFERENCES public.clientes (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT transacciones_cuentas_fkey FOREIGN KEY (id_cuenta)
        REFERENCES public.cuentas (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT valid,
    CONSTRAINT transacciones_sedes_fkey FOREIGN KEY (sede_origen)
        REFERENCES public.sedes (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT valid
        
);
