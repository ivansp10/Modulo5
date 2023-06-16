INSERT TO empresa
	values ('1245678-9','ElectroTech S.A.','Calle Ficticia 123','+1 234 567 8901',
			'info@electrotechsa.com', 'www.electrotechsa.com');

INSERT TO herramienta
	VALUES
		(001,'Herramienta1',8000),
		(002,'Herramienta2',10000),
		(003,'Herramienta3',40000),
		(004,'Herramienta4',45000),
		(005,'Herramienta5',7000);
		
INSERT TO cliente
	VALUES
		('11111111-1', 'Juan', 'juan@gmail.com', 'Calle Ficticia 1', '+1 234 567 8901'),
       	('22222222-2', 'Miguel', 'miguel@gmail.com', 'Calle Ficticia 2', '+1 234 567 8902'),
       	('33333333-3', 'Francisco', 'fran@gmail.com', 'Calle Ficticia 3', '+1 234 567 8903');
		
DELETE FROM cliente WHERE rut='33333333-3'

DELETE FROM herramienta WHERE idherramienta=001

INSERT TO arriendo
	VALUES
--Arriendos cliente 1
		(001,'2023-06-01', 3, 10000, 'Garantía 1', 002, '11111111-1'),
		(002, '2023-06-05', 2, 45000, 'Garantía 2', 004, '11111111-1');
--Arriendos cliente 2
		(003, '2023-06-02', 4, 7000, 'Garantía 3', 005, '22222222-2'),
       	(004, '2023-06-06', 1, 40000, 'Garantía 4', 003, '22222222-2');
		
UPDATE cliente set correo='modificado@gmail,com' WHERE rut='11111111-1';

SELECT * FROM herramienta;

SELECT * FROM arriendo WHERE cliente_rut='22222222-2';

SELECT * FROM cliente WHERE nombre LIKE '%a%':


