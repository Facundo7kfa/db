
delimiter $$ 
create procedure practica(
in 

DELIMITER $$

-- Este stored procedure permite registrar una reserva en la tabla de reservas.

CREATE PROCEDURE RegistrarReserva(
  IN cliente_id INT, -- ID del cliente que realiza la reserva
  IN servi_id INT -- ID del servicio que se reserva
)
BEGIN
  -- Insertar una nueva reserva en la tabla de reservas
  INSERT INTO reservas (id_cliente, id_servicios, fecha_de_reserva)
  VALUES (cliente_id, servi_id, NOW()); -- La fecha de reserva es la fecha actual
END$$

DELIMITER ;

call RegistrarReserva(3,5);
-- registrar una reserva en la base de datos, lo que facilita la gestión de las reservas de viajes espaciales

use tune;

delimiter $$ 
create procedure ServicioPrecio 
( in servicio varchar(120) )

begin  
declare resultado decimal  ;

if servicio = 'Pack familiar'
 then set resultado = 3000;   
 elseif  servicio = 'pasajero indivudal' 
 then set resultado = 6600; 
  elseif servicio = 'mudanza directa'
then set resultado = 7000; 
end if;
select resultado as precio ;
end $$ 
delimiter ; 
call ServicioPrecio('Pack familiar');
/* El procedimiento ServicioPrecio toma un parámetro de entrada llamado servicio que representa el tipo de servicio.
Utiliza una estructura condicional (IF-ELSEIF-ELSE) para asignar un precio a la variable resultado según el tipo de servicio proporcionado.
Luego, realiza una consulta SELECT para devolver el resultado (precio) con el alias precio.
Este procedimiento permite calcular el precio asociado a diferentes servicios según las condiciones establecidas en la estructura condicional. */


delimiter &&
create procedure FacturaInsert 
  (in reserva_id int,
   in cliente_id int,
   in cash decimal (10,2) ) 
begin 

if cash <> 0 then 

insert into facturapagos(id_reserva, id_cliente, monto_facturado, estado_del_pago)
values (reserva_id,cliente_id,cash,1);
end if ;

end &&
delimiter ;
/* En resumen, este procedimiento ayuda a gestionar la inserción de información de facturas en la base de datos, asegurándose de que solo se realice la inserción cuando el monto en efectivo es diferente de cero. */
call FacturaInsert(7,6,5000);
select * from facturapagos;

