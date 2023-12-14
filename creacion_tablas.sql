use tune;
create table if not exists clientes(
id_cliente int auto_increment PRIMARY KEY ,
Nombre tinytext not null, 
apellido tinytext not null,
DNI int not null,
telefono varchar(50)not null,
Email varchar(90) not null);
use tune;

-- borrar todas las tablas y volverlas hacer que tengan todas las auto_increment en las PK para que las inserciones anden bien
create table servicios(
id_servicios int auto_increment primary key,
info_servi varchar(50),
id_equipo int,
id_cliente int);

alter table servicios
add foreign key (id_cliente) references clientes(id_cliente);
 alter table servicios add foreign key(id_equipo) references equipoespacial(id_equipo);

drop table servicios
;
create table piloto(
id_piloto int auto_increment primary key,
nombre tinytext,
apellido tinytext,
fecha_seleccion date not null,
sueldo decimal(10,2),
id_nave int,
foreign key(id_nave) references nave(id_nave)
);

create table nave(
id_nave int auto_increment primary key,
nombre tinytext,
capacidad int not null,
estado boolean,
modelo varchar(20)
);

create table tripulacion(
ind_tripulante int auto_increment primary key,
nombre tinytext,
apellido tinytext,
rol varchar(50),
rango int not null,
id_nave int,
sueldo decimal(10,2),
foreign key (id_nave) references nave(id_nave)
);
create table viajeEspacial(
id_viaje int auto_increment primary key,
destino_espacial varchar(66)not null,
fecha_de_partida datetime not null,
duracion datetime not null,
info_viaje varchar(150),
foreign key (id_nave) references nave(id_nave)
);

create table itinerario(
id_itinerario int auto_increment primary key,
tiempo_viaje datetime,
viaje_info varchar(150),
id_cliente int,
id_viaje int,
id_reserva int, 
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_viaje) references viajeespacial(id_viaje)
);


create table equipoespacial(
id_equipo int auto_increment primary key,
equipo_descripcion varchar(50),
equipo_disponible boolean not null,
equipo_estado varchar(25)not null,
actualizacion_equipo_fecha datetime not null
);

drop table facturapagos;

create table facturapagos(
id_reserva int not null,
id_cliente int not null,
monto_facturado decimal (10, 2) not null,
estado_del_pago boolean not null
);
alter table facturapagos add primary key (id_factura);
alter table facturapagos add primary key (id_cliente,id_reserva);

create table seguridad(
id_nave int,
id_viaje int,
registro_de_vuelo varchar(100)not null,
dato_seguridad varchar(100)not null,
id_itinerario int,
primary key (id_viaje,id_nave),
foreign key(id_nave) references nave(id_nave),
foreign key(id_viaje) references viajeespacial(id_viaje)
);

create table reservas(
id_reserva int auto_increment primary key,
fecha_de_reserva datetime,
id_cliente int,
id_factura int ,
id_servicio int
);
                                                                                                                                                                                                                   
-- tablas de log

drop table if exists log_facturacpagos;
create table log_facturapagos(
id_log_fac int auto_increment,
evento varchar(255),
estado_anterior varchar(300),
tabla_nombre varchar(50),
fecha_registro date,
usuario varchar(50),
primary key (id_log)
);

drop table if exists log_clientes;
create table log_clientes(
id_log_cli int auto_increment,
evento varchar(255),
descripcion  varchar(255),
fecha_registro date,
id_cliente int
);

