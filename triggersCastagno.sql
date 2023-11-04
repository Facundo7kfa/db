
-- tablas de log

drop table if exists log_facturacpagos;
create table log_facturapagos(
id_log_fac int auto_increment,
evento varchar(255),
descripcion text,
fecha_evento date,
id_cliente int,
primary key (id_log_fac)
);
drop trigger if exists trg_facturapagos_log;

delimiter //
create trigger trg_facturapagos_log 
after insert on tune.log_facturapagos 
for each row 
begin 
insert into log_facturapagos (evento,descripcion,fecha_evento,usuario)
values (new.evento,' nueva factura',now(),session_user());
end;//
delimiter
/* Este trigger se dispara después de insertar un nuevo registro en la tabla log_facturapagos.
 Su función es registrar un evento en la tabla de log log_facturapagos cada vez que se agrega una nueva factura de pago.
 El registro incluye información sobre el evento, como la descripción "nueva factura", la fecha del evento y
 el usuario que realizó la operación. Esto ayuda a mantener un historial de eventos relacionados con las facturas de pago 
 en la aerolínea espacial. */
--
create table  log_equipoespacial (
  id_log_equipo int auto_increment primary key,
  id_equipo int,
  evento varchar(255),
  equipo_descripcion varchar(50),
  equipo_disponible boolean,
  equipo_estado varchar(25),
  actualizacion_equipo_fecha datetime,
  usuario varchar(50)
);

delimiter $$
create trigger trg_equipoespacial
before update on equipoespacial
for each row
begin
  insert into log_equipoespacial (id_log_equipo, evento, equipo_descripcion, equipo_disponible, equipo_estado, actualizacion_equipo_fecha, usuario)
  value (old.id_equipo, 'Actualización de equipo', old.equipo_descripcion, old.equipo_disponible, old.equipo_estado, old.actualizacion_equipo_fecha, current_user());
end;
$$
delimiter ;

/* Este trigger se dispara antes de que ocurra una actualización en la tabla equipoespacial.
 Su función es registrar un evento en la tabla de log log_equipoespacial cada vez que se realiza una actualización en la información de un equipo espacial.
 El registro incluye información sobre el evento, como la descripción "Actualización de equipo",
 los valores anteriores de la descripción, disponibilidad, estado y fecha de actualización del equipo,
 y el usuario que realiza la operación. Esto permite realizar un seguimiento detallado de los cambios realizados en los equipos espaciales,
 incluida su descripción, disponibilidad y estado, y conocer al usuario responsable de la actualizació */