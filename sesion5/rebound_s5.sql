CREATE TABLE IF NOT EXISTS public.editoriales
(
    codigo numeric(12) NOT NULL,
    nombre character varying(50) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS public.libros
(
    codigo numeric(12) NOT NULL,
    titulo character varying(50) NOT NULL,
    codigoeditorial numeric(12) NOT NULL,
    PRIMARY KEY (codigo)
);

ALTER TABLE IF EXISTS public.libros
    ADD FOREIGN KEY (codigoeditorial)
    REFERENCES public.editoriales (codigo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
	


INSERT INTO editoriales
	VALUES
		(01,'Anaya'),
		(02,'Andina'),
		(03,'S.M');
		
		
INSERT INTO libros
	VALUES
		(001,'Don Quijote de la Mancha I',01),
		(002,'El principito',02),
		(003,'EL príncipe',03),
		(004,'Diplomacia',03),
		(005,'Don Quijote de la Mancha II',01);
		
ALTER TABLE libros
	ADD COLUMN autor CHARACTER VARYING(50),
	ADD COLUMN precio NUMERIC(50);

UPDATE libros SET autor='Miguel de Cervantes',precio=150
		WHERE codigo=001;
		
UPDATE libros SET autor='Antoine SaintExupery',precio=120
		WHERE codigo=002;
		
UPDATE libros SET autor='Maquiavelo',precio=180
		WHERE codigo=003;
		
UPDATE libros SET autor='Henry Kissinger',precio=170
		WHERE codigo=004;
		
UPDATE libros SET autor='Miguel de Cervantes',precio=140
		WHERE codigo=005		

SELECT titulo,autor,precio,nombre FROM libros,editoriales

SELECT libros.titulo, libros.autor, libros.precio, editoriales.nombre
FROM libros
JOIN editoriales ON libros.codigoeditorial = editoriales.codigo;

INSERT INTO public.libros 
	VALUES
		(006,'El Señor de los Anillos',02,'Tolkien',170),
		(007,'Harry Potter',03,'J.K Rowling',150);
		
BEGIN;
DELETE FROM public.libros WHERE libros.codigoeditorial=001;
ROLLBACK;

select * from editoriales

BEGIN;
UPDATE public.editoriales SET nombre='Mountain'
	WHERE codigo=03;
SAVEPOINT cambios;
UPDATE public.editoriales SET nombre='Iberlibro'
	WHERE codigo=02;
ROLLBACK TO cambios;
COMMIT;

