---ejercicio 4.1---
--insertando,modificando y eliminando un costumer--
INSERT INTO customer VALUES 
	(600,1,'Pedro','Perez','pedro@gmail.com', 2, true, CURRENT_DATE, CURRENT_TIMESTAMP, 1);

UPDATE customer SET email = 'modificado@gmail.com',address_id = 6
WHERE customer_id = 600;
SELECT * FROM customer ORDER BY customer_id DESC;

DELETE FROM customer WHERE customer_id=600;

--insertando,modificando y eliminando un staff--
INSERT INTO staff VALUES 
(3,'Tyrion','Lannister',2,'lannister@tyrion.com',1,true,'Tyrion','lannister123',CURRENT_TIMESTAMP);

UPDATE staff SET email='modificado@lannister.cl',first_name='Tywin'
WHERE staff_id=3

SELECT * FROM staff

DELETE FROM staff WHERE staff_id=3

--insertando,modificando y eliminando un actor--
SELECT * FROM actor ORDER BY actor_id DESC

INSERT INTO actor VALUES
(201,'Daemon','Targaryen',CURRENT_TIMESTAMP);

UPDATE actor SET first_name='Rhaenyra'
WHERE actor_id=201

DELETE FROM actor WHERE actor_id=201

--ejercicio 4.2--
--Listar todas las “rental” con los datos del “customer” dado un año y mes--
SELECT * FROM rental;
SELECT * FROM customer;

SELECT * FROM rental AS r
INNER JOIN customer AS cus
ON r.customer_id=cus.customer_id
WHERE TO_CHAR(rental_date,'YYYY')='2005' AND TO_CHAR(rental_date,'MM')='06';

--ejercicio 4.3--
--Listar Número, Fecha (payment_date) y Total (amount) de todas las “payment”.--
SELECT * FROM payment 
SELECT payment_id as "Número" , payment_date as "Fecha",
amount as "Total" FROM payment

--ejercicio 4.4--
--Listar todas las “film” del año 2006 que contengan un (rental_rate) mayor a 4.0.--
SELECT * FROM film WHERE release_year = 2006 and rental_rate>4.0
ORDER BY rental_rate asc;

--ejercicio 5--

SELECT
 t1.TABLE_NAME AS tabla_nombre,
 t1.COLUMN_NAME AS columnas,
 t1.COLUMN_DEFAULT AS columna_defecto,
 t1.IS_NULLABLE AS columna_nulo,
 t1.DATA_TYPE AS columna_tipo_dato,
 COALESCE(t1.NUMERIC_PRECISION,
 t1.CHARACTER_MAXIMUM_LENGTH) AS columna_longitud,
 PG_CATALOG.COL_DESCRIPTION(t2.OID,
 t1.DTD_IDENTIFIER::int) AS columna_descripcion,
 t1.DOMAIN_NAME AS columna_dominio
FROM
 INFORMATION_SCHEMA.COLUMNS t1
 INNER JOIN PG_CLASS t2 ON (t2.RELNAME = t1.TABLE_NAME)
WHERE
 t1.TABLE_SCHEMA = 'public'
ORDER BY
 t1.TABLE_NAME;

