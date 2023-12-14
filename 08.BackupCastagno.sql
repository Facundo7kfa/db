-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tune
-- ------------------------------------------------------
-- Server version	8.2.0


/* LAS TABLAS EXPORTADAS SON : CLIENTES , EQUIPOESPACIAL , FACTURAPAGOS ,LOG_FACTURAPAGOS, NAVE 
,PILOTO ,RESERVA , SEGURIDAD ,SERVICIOS , TRIPIULACION,VIAJESPACIAL*/

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana','Gómez',123456789,'555-123-4567','ana@example.com'),(2,'Juan','Pérez',987654321,'555-987-6543','juan@example.com'),(3,'María','Rodríguez',456789123,'555-456-7890','maria@example.com'),(4,'Carlos','López',789123456,'555-789-1234','carlos@example.com'),(5,'Laura','Fernández',654321987,'555-654-3219','laura@example.com'),(6,'Pedro','García',321987654,'555-321-9876','pedro@example.com'),(7,'Carmen','Torres',987321654,'555-987-3216','carmen@example.com'),(8,'Sergio','Díaz',159753486,'555-159-7534','sergio@example.com'),(9,'Elena','Martínez',369852147,'555-369-8521','elena@example.com'),(10,'Javier','Sánchez',258147369,'555-258-1473','javier@example.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipoespacial`
--

LOCK TABLES `equipoespacial` WRITE;
/*!40000 ALTER TABLE `equipoespacial` DISABLE KEYS */;
INSERT INTO `equipoespacial` VALUES (1,'Sonda exploracion media',1,'Operativo','2023-10-21 08:00:00'),(2,'Sonda de Exploración Alpha',1,'En Mantenimiento','2023-10-19 14:30:00'),(3,'Robots de Mantenimiento',1,'Operativo','2023-10-20 10:15:00'),(4,'Equipo de Comunicaciones',1,'Operativo','2023-10-22 16:45:00'),(5,'Tractor Espacial de Carga',0,'En Reparación','2023-10-18 12:20:00'),(6,'Equipo de Investigación Científica',1,'Operativo','2023-10-23 09:30:00'),(7,'Drones de Exploración',1,'Operativo','2023-10-25 11:00:00'),(8,'Hologramas de Entretenimiento',1,'Operativo','2023-10-24 07:55:00'),(9,'Sistema de Soporte Vital',1,'Operativo','2023-10-22 14:10:00'),(10,'Nave de Abastecimiento',1,'Operativo','2023-10-20 18:30:00');
/*!40000 ALTER TABLE `equipoespacial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `facturapagos`
--

LOCK TABLES `facturapagos` WRITE;
/*!40000 ALTER TABLE `facturapagos` DISABLE KEYS */;
INSERT INTO `facturapagos` VALUES (1,1,500.00,1),(2,2,750.00,1),(3,3,600.00,1),(4,4,900.00,1),(5,5,550.00,1),(6,6,700.00,0),(7,7,800.00,1),(8,8,450.00,1),(9,9,680.00,0),(10,10,720.00,1);
/*!40000 ALTER TABLE `facturapagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `itinerario`
--

LOCK TABLES `itinerario` WRITE;
/*!40000 ALTER TABLE `itinerario` DISABLE KEYS */;
INSERT INTO `itinerario` VALUES (1,'2023-11-01 08:30:00','Viaje espacial a Marte',1,1,1),(2,'2023-11-02 10:15:00','Exploración de asteroides',2,2,2),(3,'2023-11-03 12:45:00','Turismo lunar',3,3,3),(4,'2023-11-04 09:20:00','Investigación de planetas distantes',4,4,4),(5,'2023-11-05 11:30:00','Viaje a la Nebulosa de Orión',5,5,5),(6,'2023-11-06 14:00:00','Turismo espacial a Júpiter',6,6,6),(7,'2023-11-07 17:30:00','Exploración de agujeros negros',7,7,7),(8,'2023-11-08 11:45:00','Viaje a la Estación Espacial Internacional',1,1,1),(9,'2023-11-09 14:20:00','Turismo lunar',2,2,2),(10,'2023-11-10 16:45:00','Viaje espacial a Marte',3,3,3);
/*!40000 ALTER TABLE `itinerario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_facturapagos`
--

LOCK TABLES `log_facturapagos` WRITE;
/*!40000 ALTER TABLE `log_facturapagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_facturapagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nave`
--

LOCK TABLES `nave` WRITE;
/*!40000 ALTER TABLE `nave` DISABLE KEYS */;
INSERT INTO `nave` VALUES (1,'Nave Espacial A',50,1,'Modelo X1'),(2,'Nave de Exploración B',30,1,'Modelo Z2'),(3,'Nave de Transporte C',100,1,'Modelo V3'),(4,'Nave Espacial D',40,1,'Modelo Y4'),(5,'Nave de Exploración E',25,1,'Modelo Z1'),(6,'Nave de Transporte F',90,1,'Modelo V2'),(7,'Nave Espacial G',55,0,'Modelo X2'),(8,'Nave de Transporte H',75,1,'Modelo V1'),(9,'Nave de Exploración I',35,1,'Modelo Z3'),(10,'Nave Espacial J',60,1,'Modelo Y1');
/*!40000 ALTER TABLE `nave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `piloto`
--

LOCK TABLES `piloto` WRITE;
/*!40000 ALTER TABLE `piloto` DISABLE KEYS */;
INSERT INTO `piloto` VALUES (1,'David','Martínez','2023-08-12',70000.00,1),(2,'Laura','Gómez','2023-09-05',72000.00,1),(3,'Carlos','López','2023-07-22',71000.00,2),(4,'María','Sánchez','2023-10-15',73000.00,2),(5,'Javier','Rodríguez','2023-11-20',72000.00,3),(6,'Ana','Pérez','2023-06-18',71000.00,3),(7,'Pedro','Fernández','2023-08-30',71000.00,1),(8,'Elena','Díaz','2023-10-05',70000.00,2),(9,'Sergio','Torres','2023-09-10',73000.00,3),(10,'Olivia','García','2023-07-08',72000.00,1);
/*!40000 ALTER TABLE `piloto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2023-11-01 14:30:00',1,1),(2,'2023-11-02 11:15:00',2,2),(3,'2023-11-03 16:45:00',3,3),(4,'2023-11-04 09:20:00',4,4),(5,'2023-11-05 13:00:00',5,5),(6,'2023-11-06 18:30:00',6,6),(7,'2023-11-07 10:10:00',7,7),(8,'2023-11-08 15:45:00',1,1),(9,'2023-11-09 12:20:00',2,2),(10,'2023-11-10 17:00:00',3,3);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `seguridad`
--

LOCK TABLES `seguridad` WRITE;
/*!40000 ALTER TABLE `seguridad` DISABLE KEYS */;
INSERT INTO `seguridad` VALUES (1,1,'Registro de vuelo 001','Datos de seguridad 001',1),(2,2,'Registro de vuelo 002','Datos de seguridad 002',2),(3,3,'Registro de vuelo 003','Datos de seguridad 003',3),(4,4,'Registro de vuelo 004','Datos de seguridad 004',4),(5,5,'Registro de vuelo 005','Datos de seguridad 005',5),(6,6,'Registro de vuelo 006','Datos de seguridad 006',6),(7,7,'Registro de vuelo 007','Datos de seguridad 007',7),(8,8,'Registro de vuelo 008','Datos de seguridad 008',8),(9,9,'Registro de vuelo 009','Datos de seguridad 009',9),(10,10,'Registro de vuelo 010','Datos de seguridad 010',10);
/*!40000 ALTER TABLE `seguridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Servicio de Pack Familiar',1,1),(2,'Servicio de Un Solo Pasajero',2,2),(3,'Servicio de Mudanza Directa',3,3),(4,'Servicio de Pack Familiar',4,4),(5,'Servicio de Un Solo Pasajero',5,5),(6,'Servicio de Mudanza Directa',6,6),(7,'Servicio de Pack Familiar',7,7),(8,'Servicio de Un Solo Pasajero',1,1),(9,'Servicio de Mudanza Directa',2,2),(10,'Servicio de Pack Familiar',3,3);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tripulacion`
--

LOCK TABLES `tripulacion` WRITE;
/*!40000 ALTER TABLE `tripulacion` DISABLE KEYS */;
INSERT INTO `tripulacion` VALUES (1,'Luis','Martínez','Piloto',3,1,75000.00),(2,'Ana','Gómez','Ingeniero de Propulsión',4,1,70000.00),(3,'Carlos','Sánchez','Médico Espacial',2,1,68000.00),(4,'Laura','Pérez','Científico de Datos',3,2,69000.00),(5,'Javier','López','Navegante',3,2,70000.00),(6,'Elena','García','Comunicaciones',2,3,67000.00),(7,'Sergio','Torres','Ingeniero de Mantenimiento',3,3,72000.00),(8,'María','Rodríguez','Explorador',2,3,70000.00),(9,'Olivia','Fernández','Especialista en Robótica',4,1,76000.00),(10,'Pedro','Díaz','Científico de Vida Extraterrestre',3,1,71000.00);
/*!40000 ALTER TABLE `tripulacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `viajeespacial`
--

LOCK TABLES `viajeespacial` WRITE;
/*!40000 ALTER TABLE `viajeespacial` DISABLE KEYS */;
INSERT INTO `viajeespacial` VALUES (1,'Cinturón de Asteroides','2023-10-21 08:00:00','10:00:00','La tripulación experimentó síntomas leves de desorientación espacial durante la primera hora del viaje.'),(2,'Espacio Profundo','2023-10-22 12:30:00','08:45:00','Informe de alto riesgo: Se detectaron campos de asteroides en la ruta programada. Se realizó un desvío necesario.'),(3,'Nebulosa Desconocida','2023-10-23 18:15:00','12:30:00','Todos los miembros de la tripulación se encuentran en buen estado de salud y ánimo en la mitad del viaje.'),(4,'Planeta X Cercano','2023-10-24 06:45:00','06:00:00','El tripulante 7 reportó una ligera fiebre. Se mantiene un monitoreo constante de su salud.'),(5,'Investigación de Asteroides','2023-10-25 15:00:00','09:15:00','Se encontraron indicios de agua en un asteroide. Posibilidad de abastecimiento de agua potable.'),(6,'Zona de Radiación Cósmica','2023-10-26 21:30:00','07:45:00','Advertencia: Aumento de la radiación cósmica en la región actual.'),(7,'Observación de Nebulosas','2023-10-27 04:15:00','05:30:00','La tripulación disfrutó de una hermosa vista de la Nebulosa de Orión.'),(8,'Ejercicios de Gravedad Artificial','2023-10-28 10:45:00','11:15:00','Se realizaron ejercicios de gravedad artificial para mantener la salud de la tripulación.'),(9,'Fluctuaciones de Gravedad','2023-10-29 22:00:00','08:00:00','El tripulante 11 informó de náuseas debido a la fluctuación de la gravedad.'),(10,'Reparación del Sistema de Propulsión','2023-10-30 07:30:00','10:30:00','Reparación exitosa de una pequeña avería en el sistema de propulsión.'),(11,'Fluctuaciones de Radiación','2023-10-31 18:00:00','09:45:00','Se detectaron fluctuaciones en la radiación, se requiere mayor protección.'),(12,'Revisión Médica','2023-11-01 03:15:00','07:30:00','Revisión médica: Todos los tripulantes se encuentran en buen estado, el tripulante 6 se ha recuperado.'),(13,'Informe de Meteoritos','2023-11-02 11:45:00','12:45:00','Informe de meteoritos: Se evitaron tres encuentros potenciales mediante ajustes en la trayectoria.'),(14,'Aproximación al Destino','2023-11-03 00:30:00','06:45:00','Inicio de la fase de aproximación al destino. La tripulación está emocionada.'),(15,'Aterrizaje en Marte','2023-11-04 08:15:00','05:30:00','Aterrizaje exitoso en Marte. Comienzo de la exploración planetaria.');
/*!40000 ALTER TABLE `viajeespacial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16 23:34:59
