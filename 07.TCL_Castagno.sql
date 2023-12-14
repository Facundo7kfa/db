-- Elige dos tablas de las presentadas en tu proyecto. Realizarás una serie de modificaciones en los registros, controladas por transacciones.

 use tune;
 
 START TRANSACTION ;
 DELETE  FROM piloto WHERE id_piloto = 4 ;
 DELETE FROM piloto WHERE apellido = 'Torres';
 DELETE FROM pioloto WHERE sueldo < 71000.00;
 
 -- rollback
 -- commit 
 
 START TRANSACTION;

INSERT INTO clientes VALUES (1, 'Juan', 'Pérez', 12345678, '555-1234', 'juan.perez@email.com');
INSERT INTO clientes VALUES (2, 'María', 'Gómez', 98765432, '555-5678', 'maria.gomez@email.com');
INSERT INTO clientes VALUES (3, 'Carlos', 'Sánchez', 56789012, '555-9012', 'carlos.sanchez@email.com');
INSERT INTO clientes VALUES (4, 'Laura', 'Martínez', 34567890, '555-3456', 'laura.martinez@email.com');
savepoint lote_1;
INSERT INTO clientes VALUES (5, 'Pedro', 'Rodríguez', 89012345, '555-6789', 'pedro.rodriguez@email.com');
INSERT INTO clientes VALUES (6, 'Ana', 'López', 65432109, '555-4321', 'ana.lopez@email.com');
INSERT INTO clientes VALUES (7, 'Roberto', 'Fernández', 43210987, '555-1098', 'roberto.fernandez@email.com');
INSERT INTO clientes VALUES (8, 'Isabel', 'Díaz', 21098765, '555-8765', 'isabel.diaz@email.com');
 savepoint lote_2;
 -- rollback savepoint lote_1;

 
 
