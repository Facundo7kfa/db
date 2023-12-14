
-- tablas de log
use tune;
drop table if exists  log_facturapagos;
create table log_facturapagos(
id_log_fac int auto_increment,
descripcion text,
fecha_evento date,
id_cliente int,
primary key (id_log_fac)
);


-- trigger 
drop trigger if exists trg_facturapagos_log;
delimiter //
create trigger trg_facturapagos_log 
after insert on tune.facturapagos 
for each row 
begin 
insert into log_facturapagos (descripcion,fecha_evento,id_cliente)
values (' nueva factura',now(),new.id_cliente);
end//
delimiter ;

/* Este trigger se dispara después de insertar un nuevo registro en la tabla log_facturapagos.
 Su función es registrar un evento en la tabla de log log_facturapagos cada vez que se agrega una nueva factura de pago.
 El registro incluye información sobre el evento, como la descripción "nueva factura", la fecha del evento y
 el usuario que realizó la operación. Esto ayuda a mantener un historial de eventos relacionados con las facturas de pago 
 en la aerolínea espacial. */
 
 
 
 -- 2 tabla de log 
 
drop table log_equipoespacial;
create table  log_equipoespacial (
  id_log_equipo int auto_increment primary key,
  id_equipo int,
  equipo_descripcion varchar(50),
  equipo_disponible boolean not null,
  equipo_estado varchar(25) not null,
  actualizacion_equipo_fecha datetime not null
);

-- trigger
use tune;
select * from log_equipoespacial;

update equipoespacial 
   set equipo_estado ='en Reparacion', equipo_disponible =0 
   where equipo_descripcion like 'Drones%';
-- para que funcione el update  desactivar el safe updates desde server editor ...

update equipoespacial 
  set equipo_estado ='reconfigurando animacion' , equipo_disponible =0
  where equipo_descripcion like 'Hologramas%';

select * from log_equipoespacial;
delimiter $$
create trigger trg_equipoespacial
before update on equipoespacial
for each row
begin
  insert into log_equipoespacial (id_log_equipo, equipo_descripcion, equipo_disponible, equipo_estado, actualizacion_equipo_fecha)
  value (old.id_equipo, old.equipo_descripcion, old.equipo_disponible, old.equipo_estado, old.actualizacion_equipo_fecha);
end;
$$
delimiter ;

select * from equipoespacial;
/* Este trigger se dispara antes de que ocurra una actualización en la tabla equipoespacial.
 Su función es registrar un evento en la tabla de log log_equipoespacial cada vez que se realiza una actualización en la información de un equipo espacial.
 El registro incluye información sobre el evento, como la descripción "Actualización de equipo",
 los valores anteriores de la descripción, disponibilidad, estado y fecha de actualización del equipo,
 y el usuario que realiza la operación. Esto permite realizar un seguimiento detallado de los cambios realizados en los equipos espaciales,
 incluida su descripción, disponibilidad y estado, y conocer al usuario responsable de la actualizació */