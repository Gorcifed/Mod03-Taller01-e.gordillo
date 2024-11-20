SET autocommit=0;
START TRANSACTION;
INSERT INTO guarderias (Nombre, Direccion, Telefono) VALUES('La favorita', 'Carrera 15#78-8', '573125345687');
INSERT INTO guarderias (Nombre, Direccion, Telefono) VALUES('Pet care', 'Calle 125#25-98', '57314568987');

INSERT INTO cuidador (Nombre, Telefono, ID_Guarderia) VALUES('Johnathan Cortés', '57325689858', 1);
INSERT INTO cuidador (Nombre, Telefono, ID_Guarderia) VALUES('Juliana Mejía', '5732025698745', 1);
INSERT INTO cuidador (Nombre, Telefono, ID_Guarderia) VALUES('Carlos Medina', '573025265987', 2);

INSERT INTO perro (nombre, raza, peso, edad, ID_Guarderia, ID_cuidador) VALUES('Hanna', 'Beagle', 3.6, 1, 1, 1);
INSERT INTO perro (nombre, raza, peso, edad, ID_Guarderia, ID_cuidador) VALUES('Max', 'Boston Terrier', 6.0, 2, 1, 1);
INSERT INTO perro (nombre, raza, peso, edad, ID_Guarderia, ID_cuidador) VALUES('Lassie', 'Bulldog', 8.2, 2, 1, 2);
INSERT INTO perro (nombre, raza, peso, edad, ID_Guarderia, ID_cuidador) VALUES('Luky', 'Bretón', 2.2, 1, 1, 1);
INSERT INTO perro (nombre, raza, peso, edad, ID_Guarderia, ID_cuidador) VALUES('Lassie', 'Bulldog', 10.0, 3, 1, 2);
INSERT INTO perro (nombre, raza, peso, edad, ID_Guarderia, ID_cuidador) VALUES('Suki', 'yorkie', 1.2, 5, 2, 1);

INSERT INTO usuario (id, `alias`, `contrasena`, `es_admin`) VALUES (1, 'admin', '123', 1);
INSERT INTO usuario (id, `alias`, `contrasena`, `es_admin`) VALUES (2, 'administrator', '234', 1);
INSERT INTO usuario (id, `alias`, `contrasena`, `es_admin`) VALUES (3, 'user1', '345', 0);
INSERT INTO usuario (id, `alias`, `contrasena`, `es_admin`) VALUES (4, 'user2', '456', 0);

COMMIT;
