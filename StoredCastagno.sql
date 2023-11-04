DELIMITER $$

CREATE PROCEDURE OrdenarTabla(
  IN tabla_nombre VARCHAR(50),
  IN campo_orden VARCHAR(50),
  IN orden INT
)
BEGIN
  DECLARE sql_query VARCHAR(255);
  
  SET sql_query = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_orden);
  
  IF orden = 2 THEN
    SET sql_query = CONCAT(sql_query, ' DESC');
  END IF;
  
  PREPARE stmt FROM @sql_query; 
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;
CALL OrdenarTabla('nombre_de_la_tabla', 'nombre_del_campo', 1);
/*Este stored procedure se utiliza para ordenar una tabla en función de un campo específico.
 El procedimiento toma tres parámetros: el nombre de la tabla que se va a ordenar, el campo por el cual ordenar y 
 la dirección del orden (ascendente o descendente). Luego, construye una consulta SQL dinámica para ordenar la tabla y 
 ejecuta la consulta. Es útil cuando se necesita personalizar el orden de los resultados en una tabla sin tener que escribir
 consultas SQL completas cada vez.
*/



DELIMITER $$

-- Este stored procedure permite registrar una reserva en la tabla de reservas.

CREATE PROCEDURE RegistrarReserva(
  IN cliente_id INT, -- ID del cliente que realiza la reserva
  IN viaje_id INT -- ID del viaje que se reserva
)
BEGIN
  -- Insertar una nueva reserva en la tabla de reservas
  INSERT INTO reservas (id_cliente, id_viaje, fecha_reserva)
  VALUES (cliente_id, viaje_id, NOW()); -- La fecha de reserva es la fecha actual
END$$

DELIMITER ;

-- registrar una reserva en la base de datos, lo que facilita la gestión de las reservas de viajes espaciales