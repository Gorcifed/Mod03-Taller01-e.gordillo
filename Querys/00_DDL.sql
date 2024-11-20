CREATE TABLE `cuidador` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(14) NOT NULL,
  `ID_Guarderia` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ciudador_guarderia_idx` (`ID_Guarderia`),
  CONSTRAINT `fk_ciudador_guarderia` FOREIGN KEY (`ID_Guarderia`) REFERENCES `guarderias` (`ID`)
);

CREATE TABLE `guarderias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Telefono` varchar(14) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
);

CREATE TABLE `perro` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `raza` varchar(45) NOT NULL,
  `edad` decimal(4,0) NOT NULL,
  `peso` int NOT NULL,
  `ID_Guarderia` int DEFAULT NULL,
  `ID_Cuidador` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_perro_guarderia_idx` (`ID_Guarderia`),
  KEY `fk_perro_cuidador_idx` (`ID_Cuidador`),
  CONSTRAINT `fk_perro_cuidador` FOREIGN KEY (`ID_Cuidador`) REFERENCES `cuidador` (`ID`),
  CONSTRAINT `fk_perro_guarderia` FOREIGN KEY (`ID_Guarderia`) REFERENCES `guarderias` (`ID`)
);

CREATE TABLE `tablas`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `alias` VARCHAR(45) NOT NULL,
  `contrasena` VARCHAR(45) NOT NULL,
  `es_admin` INT NOT NULL,
  PRIMARY KEY (`id`));

