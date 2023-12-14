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
  ('David', 'Torres', 23456789, '555-789-012', 'david@example.com'),
  ('Laura', 'García', 11223344, '555-111-222', 'laura@example.com'),
  ('Miguel', 'Díaz', 22334455, '555-222-333', 'miguel@example.com'),
  ('Isabel', 'Reyes', 33445566, '555-333-444', 'isabel@example.com'),
  ('Martín', 'Gutiérrez', 44556677, '555-444-555', 'martin@example.com'),
  ('Carmen', 'Hernández', 55667788, '555-555-666', 'carmen@example.com');

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
  ('Pack Familiar', 1, 10),
  ('Pack Familiar', 1, 11),
  ('Pasajero Individual', 2, 12),
  ('Mudanza Directa', 3, 13),
  ('Pack Familiar', 1, 14),
  ('Pasajero Individual', 2, 15);
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
  ('Elena', 'López', '2023-11-15', 5400.00, 1),
  ('Laura', 'García', '2023-09-08', 4700.00, 2),
  ('Javier', 'Hernández', '2023-10-18', 5100.00, 3),
  ('Carmen', 'Díaz', '2023-11-25', 5400.00, 1),
  ('Ricardo', 'Castillo', '2023-09-29', 4800.00, 2),
  ('Isabel', 'Ortega', '2023-10-12', 5000.00, 3);

-- Inserciones para la tabla "nave"
INSERT INTO nave (nombre, capacidad, estado, modelo)
VALUES
  ('Ultimo Santo', 100, 1, 'Modelo X1'),
  ('Titaneitor666', 80, 1, 'Modelo Y2'),
  ('Nueva Andromeda', 120, 1, 'Modelo Z3'),
  ('Centella Celestial', 100, 1, 'Modelo X1'),
  ('Titánico Explorer', 80, 1, 'Modelo Y2'),
  ('Nova Estelar', 120, 1, 'Modelo Z3'),
  ('Cósmica Vanguardia', 90, 1, 'Modelo A4'),
  ('Explorador Neptuniano', 110, 1, 'Modelo B5'),
  ('Galaxia Prodigio', 95, 1, 'Modelo C6'),
  ('Luminosa Estrella', 105, 1, 'Modelo D7'),
  ('Expresso Planetario', 75, 1, 'Modelo E8'),
  ('Nebulosa Navegante', 115, 1, 'Modelo F9'),
  ('Odisea de Orión', 85, 1, 'Modelo G10'),
  ('Buscador de Supernovas', 125, 1, 'Modelo H11'),
  ('Cruzador Cósmico', 100, 1, 'Modelo I12'),
  ('Aventurero Aurora', 80, 1, 'Modelo J13'),
  ('Explorador Astro', 110, 1, 'Modelo K14'),
  ('Estelar Mechanicus', 95, 1, 'Modelo L15');
  

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
  ('Antonio', 'López', 'Ingeniero', 3, 1, 4000.00),
  ('Luisa', 'Martínez', 'Comunicaciones', 1, 1, 3800.00),
  ('Pedro', 'Hernández', 'Biocientífico', 5, 2, 4500.00),
  ('Sofía', 'García', 'Navegante', 2, 3, 4300.00),
  ('Juan', 'Díaz', 'Ingeniero de Sistemas', 3, 1, 4000.00),
  ('María', 'Torres', 'Mecánica', 4, 2, 4200.00);

-- Inserciones para la tabla "viajeEspacial"
INSERT INTO viajeEspacial (destino_espacial, fecha_de_partida, duracion, info_viaje)
VALUES
  ('Planeta Rojo', '2024-05-20 10:00:00', '48 hours', 'Exploración de Marte'),
  ('Saturno', '2024-06-10 08:30:00', '72 hours', 'Viaje a los anillos de Saturno'),
  ('Nebulosa de Orión', '2024-07-15 15:15:00', '96 hours', 'Exploración de nebulosas'),
  ('Júpiter', '2024-08-05 12:45:00', '120 hours', 'Misión a las lunas de Júpiter'),
  ('Galaxia Andrómeda', '2024-09-18 18:00:00', '144 hours', 'Exploración de la galaxia vecina'),
  ('Cinturón de Asteroides', '2024-10-22 09:30:00', '72 hours', 'Recopilación de datos sobre asteroides'),
  ('Luna de Titán', '2024-11-12 14:20:00', '96 hours', 'Investigación en la luna de Saturno'),
  ('Agujero Negro', '2024-12-25 23:59:00', '168 hours', 'Estudio de un agujero negro en el centro de la galaxia'),
  ('Planeta Gaseoso', '2025-01-30 06:45:00', '120 hours', 'Análisis atmosférico en un planeta gaseoso'),
  ('Supernova', '2025-03-05 03:10:00', '144 hours', 'Observación de una supernova en formación'),
  ('Anomalía Espacial', '2025-04-15 21:30:00', '72 hours', 'Investigación de una anomalía en el espacio-tiempo'),
  ('Asterismo Luminoso', '2025-05-20 10:00:00', '96 hours', 'Estudio de un asterismo en una región estelar'),
  ('Planeta Helado', '2025-06-30 12:30:00', '120 hours', 'Exploración de un planeta helado en el sistema estelar'),
  ('Nube de Oort', '2025-08-10 15:45:00', '144 hours', 'Investigación en la Nube de Oort del sistema solar'),
  ('Exoplaneta Habitado', '2025-09-25 08:00:00', '72 hours', 'Estudio de un exoplaneta con posibilidad de vida');

-- Inserciones para la tabla "itinerario"
INSERT INTO itinerario (tiempo_viaje, viaje_info, id_cliente, id_viaje, id_reserva)
VALUES
  ('2024-05-20 10:00:00', 'Viaje a Marte', 1, 1, 1),
  ('2024-06-10 08:30:00', 'Tour por Saturno', 2, 2, 2),
  ('2024-07-15 15:15:00', 'Exploración de nebulosas', 3, 3, 3),
  ('2024-05-20 10:00:00', 'Viaje a Marte', 4, 1, 4),
   ('2024-08-05 12:45:00', 'Misión a las lunas de Júpiter', 5, 4, 5),
  ('2024-09-18 18:00:00', 'Exploración de la galaxia vecina', 6, 5, 6),
  ('2024-10-22 09:30:00', 'Recopilación de datos sobre asteroides', 7, 6, 7),
  ('2024-11-12 14:20:00', 'Investigación en la luna de Saturno', 8, 7, 8),
  ('2024-12-25 23:59:00', 'Estudio de un agujero negro en el centro de la galaxia', 9, 8, 9),
  ('2025-01-30 06:45:00', 'Análisis atmosférico en un planeta gaseoso', 10, 9, 10),
  ('2025-03-05 03:10:00', 'Observación de una supernova en formación', 11, 10, 11),
  ('2025-04-15 21:30:00', 'Investigación de una anomalía en el espacio-tiempo', 12, 11, 12),
  ('2025-05-20 10:00:00', 'Estudio de un asterismo en una región estelar', 13, 12, 13),
  ('2025-06-30 12:30:00', 'Exploración de un planeta helado en el sistema estelar', 14, 13, 14),
  ('2025-08-10 15:45:00', 'Investigación en la Nube de Oort del sistema solar', 15, 14, 15);
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
  ('Equipo de investigación científica', 1, 'Operativo', '2023-10-15 08:00:00'),
    ('Robots de exploración planetaria', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Sensores atmosféricos avanzados', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Módulos de almacenamiento de datos espaciales', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Trajes espaciales de alta tecnología', 1, 'Operativo', '2023-10-15 08:00:00'),
  ('Sistemas de propulsión iónica', 1, 'Operativo', '2023-10-15 08:00:00');


-- Elimina la tabla "facturapagos" (ya que la has creado y eliminado previamente, no es necesario insertar datos).

-- Inserciones para la tabla "seguridad"
INSERT INTO seguridad (id_nave, id_viaje, registro_de_vuelo, dato_seguridad, id_itinerario)
VALUES
  (1, 1, 'Registro de vuelo a Marte', 'Nivel de radiación bajo', 1),
  (2, 2, 'Registro de vuelo a Saturno', 'Sistema de propulsión en buen estado', 2),
  (3, 3, 'Registro de vuelo a Nebulosa de Orión', 'Comunicaciones estables', 3),
  (1, 1, 'Registro de vuelo a Marte', 'Nivel de oxígeno adecuado', 4),
  (2, 2, 'Registro de vuelo a Saturno', 'Ruta de vuelo segura', 5),
  (3, 3, 'Registro de vuelo a Nebulosa de Orión', 'Sensores de seguridad operativos', 6),
  (4, 4, 'Registro de vuelo a Júpiter', 'Escudos de radiación activados', 7),
  (5, 5, 'Registro de vuelo a Galaxia Andrómeda', 'Revisión de sistemas completa', 8),
  (6, 6, 'Registro de vuelo al Cinturón de Asteroides', 'Monitoreo de asteroides en curso', 9),
  (7, 7, 'Registro de vuelo a la Luna de Titán', 'Mantenimiento de sistemas de navegación', 10),
  (8, 8, 'Registro de vuelo al Agujero Negro', 'Análisis continuo de la gravedad', 11),
  (9, 9, 'Registro de vuelo a un Planeta Gaseoso', 'Control de presión atmosférica estable', 12);

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
  ('2023-10-24 11:00:00', 10, 10, 10),
  ('2023-10-25 15:15:00', 11, 11, 11),
  ('2023-10-26 14:00:00', 12, 12, 12),
  ('2023-10-27 10:45:00', 13, 13, 13),
  ('2023-10-28 11:30:00', 14, 14, 14),
  ('2023-10-29 12:45:00', 15, 15, 15);

INSERT INTO facturapagos (id_reserva, id_cliente, monto_facturado, estado_del_pago)
VALUES
  (1, 1, 1500.00, 1),
  (2, 2, 1600.00, 1),
  (3, 3, 1700.00, 1),
  (4, 4, 1800.00, 1),
  (5, 5, 1900.00, 1),
  (6, 6, 2000.00, 1),
  (7, 7, 2100.00, 1),
  (8, 8, 2200.00, 1),
  (9, 9, 2300.00, 1),
  (10, 10, 2400.00, 1),
  (11, 11, 2500.00, 1),
  (12, 12, 2600.00, 1),
  (13, 13, 2700.00, 1),
  (14, 14, 2800.00, 1),
  (15, 15, 2900.00, 1);
