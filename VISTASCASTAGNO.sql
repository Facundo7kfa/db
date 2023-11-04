CREATE VIEW VW_viajes_con_naves AS
(SELECT ve.*, na.nombre AS nombre_nave
FROM viajeespacial ve
INNER JOIN nave na ON ve.id_nave = na.id_nave);

CREATE VIEW VW_sueldo_maximo_tripulantes AS
(SELECT id_nave, MAX(sueldo) AS sueldo_maximo
FROM tripulante
GROUP BY id_nave);

CREATE VIEW vW_naves_con_tripulantes AS
(SELECT na.id_nave, na.nombre AS nombre_nave, COUNT(tr.id_tripulante) AS cantidad_tripulantes
FROM nave na
LEFT JOIN tripulacion tr ON na.id_nave = tr.id_nave
GROUP BY na.id_nave);

CREATE VIEW VW_viajes_con_clientes AS
(SELECT ve.id_viaje, ve.fecha_partida, ve.duracion, ve.info,
    (SELECT CONCAT(cl.nombre, ' ', cl.apellido) FROM cliente cl WHERE cl.id_cliente = it.id_cliente) AS nombre_cliente
FROM viajeespacial ve
INNER JOIN itinerario it ON ve.id_viaje = it.id_viaje);

CREATE VIEW VW_estado_pago_cliente AS
SELECT id_cliente, 
       estado_del_pago = 1 AS estado_pago_true
FROM facturapagos;