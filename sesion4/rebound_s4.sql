INSERT INTO empresa VALUES ('13456789-0','ABC Corporation','Calle Ficticia 123',
                            '+1 234 567 8901','info@abccorporation.com',
                            'www.abccorporation.com');
INSERT INTO tipovehiculo VALUES (
001,'vehiculo1'
);
INSERT INTO tipovehiculo VALUES (
002,'vehiculo2'
);

INSERT INTO cliente
VALUES
    ('20033464-1','Juan','juan@gmail.com','calle1','12346578','a'),
    ('19054464-1','Pablo','pablo@gmail.com','calle2','89746578','a'),
    ('18115654-7','Pedro','Pedro@gmail.com','calle3','87646578','a');
    
INSERT INTO marca(idmarca,nombre)
VALUES
    ('001','Marca1'),
    ('002','Marca2');
    
INSERT INTO vehiculo
VALUES
    (001,'AB1234','Marca1','Stellar GT','verde','10000000','5','001','002'),
    (002,'CD5678','Marca2','Phoenix Vortex','rojo','70000000','4','002','001'),
    (003,'EF9012','Marca1','Thunderstrike X','negro','30000000','6','001','001'),
    (004,'GH3456','Marca2','Eclipse Vanguard','blanco','20000000','5','002','002'),
    (005,'IJ7890','Marca1','Radiant Blaze','azul','10000000','5','1','001');


DELETE FROM cliente WHERE (rut='18115654-7');

INSERT INTO venta
VALUES
    (001,'2023-06-06','10000000',001,'20033464-1'),
    (002,'2023-06-07','70000000',002,'19054464-1');


UPDATE cliente SET nombre = 'Carlos' WHERE rut = '19054464-1';

SELECT * FROM venta;

SELECT * FROM venta WHERE cliente_rut='20033464-1';

SELECT patente FROM vehiculo; 

SELECT * FROM cliente;





	


