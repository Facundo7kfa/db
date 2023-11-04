-- Inserciones para la tabla "clientes"
INSERT INTO clientes (Nombre, apellido, DNI, telefono, Email)
VALUES
  ('Juan', 'López', 12345678, '555-123-456', 'juan@example.com'),
  ('María', 'Gómez', 98765432, '555-789-012', 'maria@example.com'),
  ('Pedro', 'Martínez', 45678901, '555-234-567', 'pedro@example.com'),
  ('Luisa', 'Rodríguez', 78901234, '555-890-123', 'luisa@example.com'),
  ('Manuel', 'Pérez', 56789012, '555-345-678', 'manuel@example.com'),
  ('Ana', 'Sánchez', 89012345, '555-901-234', 'ana@example.com'),
  ('Elena', 'Fernández', 34567890, '555-456-789', 'elena@example.com'),
  ('Carlos', 'Ramírez', 67890123, '555-567-890', 'carlos@example.com'),
  ('Sofía', 'Luna', 90123456, '555-678-901', 'sofia@example.com'),
  ('David', 'Torres', 23456789, '555-789-012', 'david@example.com');

-- Inserciones para la tabla "servicios"
INSERT INTO servicios (info_servi, id_equipo, id_cliente)
VALUES
  ('Pack Familiar', 1, 1),
  ('Pasajero Individual', 2, 2),
  ('Mudanza Directa', 3, 3),
  ('Pack Familiar', 1, 4),
  ('Pasajero Individual', 2, 5),
  ('Mudanza Directa', 3, 6),
  ('Pack Familiar', 1, 7),
  ('Pasajero Individual', 2, 8),
  ('Mudanza Directa', 3, 9),
  ('Pack Familiar', 1, 10);

-- Inserciones para la tabla "piloto"
INSERT INTO piloto (nombre, apellido, fecha_seleccion, sueldo, id_nave)
VALUES
  ('Luis', 'Santos', '2023-10-15', 5000.00, 1),
  ('Ana', 'Torres', '2023-09-25', 4500.00, 2),
  ('Carlos', 'Gómez', '2023-11-02', 5200.00, 3),
  ('Sofía', 'Ramírez', '2023-10-08', 4900.00, 1),
  ('Juan', 'Luna', '2023-09-17', 4700.00, 2),
  ('María', 'Fernández', '2023-11-05', 5300.00, 3),
  ('Pedro', 'Pérez', '2023-10-31', 4800.00, 1),
  ('Luisa', 'Sánchez', '2023-09-12', 4600.00, 2),
  ('Manuel', 'Martínez', '2023-10-22', 5100.00, 3),
  ('Elena', 'López', '2023-11-15', 5400.00, 1);

-- Inserciones para la tabla "nave"
INSERT INTO nave (nombre, capacidad, estado, modelo)
VALUES
  ('Ultimo Santo', 100, 1, 'Modelo X1'),
  ('Titaneitor666', 80, 1, 'Modelo Y2'),
  ('Nueva Andromeda', 120, 1, 'Modelo Z3');

-- Inserciones para la tabla "tripulacion"
INSERT INTO tripulacion (nombre, apellido, rol, rango, id_nave, sueldo)
VALUES
  ('Laura', 'Gómez', 'Ingeniera', 3, 1, 4000.00),
  ('Javier', 'Pérez', 'Médico', 4, 2, 4200.00),
  ('Marta', 'Santos', 'Piloto', 2, 3, 4300.00),
  ('Roberto', 'Luna', 'Ingeniero', 3, 1, 4000.00),
  ('Carmen', 'Fernández', 'Mecánica', 4, 2, 4200.00),
  ('Miguel', 'Torres', 'Piloto', 2, 3, 4300.00),
  ('Isabel', 'Ramírez', 'Ingeniera', 3, 1, 4000.00),
  ('Ricardo', 'Sánchez', 'Médico', 4, 2, 4200.00),
  ('Eva', 'Gómez', 'Piloto', 2, 3, 4300.00),
  ('Antonio', 'López', 'Ingeniero', 3, 1, 4000.00);

-- Inserciones para la tabla "viajeEspacial"
INSERT INTO viajeEspacial (destino_espacial, fecha_de_partida, duracion, info_viaje)
VALUES
  ('Planeta Rojo', '2024-05-20 10:00:00', '48 hours', 'Exploración de Marte'),
  ('Saturno', '2024-06-10 08:30:00', '72 hours', 'Viaje a los anillos de Saturno'),
  ('Nebulosa de Orión', '2024-07-15 15:15:00', '96 hours', 'Exploración de nebulosas');

-- Inserciones para la tabla "itinerario"
INSERT INTO itinerario (tiempo_viaje, viaje_info, id_cliente, id_viaje, id_reserva)
VALUES
  ('2024-05-20 10:00:00', 'Viaje a Marte', 1, 1, 1),
  ('2024-06-10 08:30:00', 'Tour por Saturno', 2, 2, 2),
  ('2024-07-15 15:15:00', 'Exploración de nebulosas', 3, 3, 3),
  ('2024-05-20 10:00:00', 'Viaje a Marte', 4, 1, 4);
  
  -- Inserciones para la tabla "equipoespacial"
INSERT INTO equipoespacial (equipo_descripcion, equipo_disponible, equipo_estado, actualizacion_equipo_fecha)
VALUES
  ('Robot de asistencia', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Nanobots de reparación', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Sistemas de comunicación avanzados', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Instrumentos de navegación de última generación', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Generadores de energía solar', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Materiales de aislamiento térmico', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Sistemas de soporte vital', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Drones exploradores', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Impresoras 3D de repuestos', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Equipo de investigación científica', 1, 'Operativo', '2023-10-15 08:00:00');

-- Elimina la tabla "facturapagos" (ya que la has creado y eliminado previamente, no es necesario insertar datos).

-- Inserciones para la tabla "seguridad"
INSERT INTO seguridad (id_nave, id_viaje, registro_de_vuelo, dato_seguridad, id_itinerario)
VALUES
  (1, 1, 'Registro de vuelo a Marte', 'Nivel de radiación bajo', 1),
  (2, 2, 'Registro de vuelo a Saturno', 'Sistema de propulsión en buen estado', 2),
  (3, 3, 'Registro de vuelo a Nebulosa de Orión', 'Comunicaciones estables', 3),
  (1, 1, 'Registro de vuelo a Marte', 'Nivel de oxígeno adecuado', 4),
  (2, 2, 'Registro de vuelo a Saturno', 'Ruta de vuelo segura', 5),
  (3, 3, 'Registro de vuelo a Nebulosa de Orión', 'Sensores de seguridad operativos', 6);

-- Inserciones para la tabla "reservas"
INSERT INTO reservas (fecha_de_reserva, id_cliente, id_factura, id_servicio)
VALUES
  ('2023-10-15 10:00:00', 1, 1, 1),
  ('2023-10-16 09:30:00', 2, 2, 2),
  ('2023-10-17 11:15:00', 3, 3, 3),
  ('2023-10-18 08:45:00', 4, 4, 4),
  ('2023-10-19 12:00:00', 5, 5, 5),
  ('2023-10-20 14:30:00', 6, 6, 6),
  ('2023-10-21 13:45:00', 7, 7, 7),
  ('2023-10-22 09:00:00', 8, 8, 8),
  ('2023-10-23 10:30:00', 9, 9, 9),
  ('2023-10-24 11:00:00', 10, 10, 10);
 