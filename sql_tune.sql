use tune;
create table servicios(
id_servicios int auto_increment primary key,
info_servi varchar(50),
id_equipo int,
id_cliente int,
foreign key (id_cliente) references cliente(id_cliente),
foreign key(id_equipo) references equipoespacial(id_equipo)
);
drop table servicios;
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

create table itinerario(
id_itinerario int auto_increment primary key,
tiempo_viaje datetime,
id_cliente int,
id_viaje int,
id_
foreign key(id_cliente) references cliente(id_cliente),
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
alter table facturapagos
add primary key (id_cliente,id_reserva);

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
fecha_de_reserva datetime
);

-- la primary key compuesta sea solo para facturas que reserva tenga su auto_increment




