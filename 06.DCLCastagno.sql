use mysql;
--

-- Crea un usuario llamado 'facundo' con contraseña 'pizzalibre44' si no existe
CREATE USER IF NOT EXISTS 'facundo'@'localhost' IDENTIFIED BY 'pizzalibre44';

-- Otorga permisos de SELECT en todas las bases de datos y tablas al usuario 'facundo'
GRANT SELECT ON *.* TO 'facundo'@'localhost';

-- Crea un usuario llamado 'kfacastagno' con contraseña 'vientorojo11' si no existe
CREATE USER IF NOT EXISTS 'kfacastagno'@'localhost' IDENTIFIED BY 'vientorojo11';

-- Otorga permisos de SELECT, INSERT y UPDATE en todas las bases de datos y tablas al usuario 'kfacastagno'
GRANT SELECT, INSERT, UPDATE ON *.* TO 'kfacastagno'@'localhost';