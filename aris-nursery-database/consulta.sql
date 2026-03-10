
-- Proyecto: Sistema de Base de Datos
-- Guardería: Aris's Nursery
-- Asignatura:



//TABLA BEBE//

CREATE TABLE bebe (
    id_bebe INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    edad INTEGER,
    nombre_padre TEXT,
    telefono TEXT
);



 --TABLA ACTIVIDAD

CREATE TABLE actividad (
    id_actividad INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_actividad TEXT NOT NULL,
    dia TEXT,
    hora TEXT
);



-- TABLA INSCRIPCION

CREATE TABLE inscripcion (
    id_inscripcion INTEGER PRIMARY KEY AUTOINCREMENT,
    id_bebe INTEGER,
    id_actividad INTEGER,

    FOREIGN KEY (id_bebe) REFERENCES bebe(id_bebe),
    FOREIGN KEY (id_actividad) REFERENCES actividad(id_actividad)
);


-- REGISTROS DE BEBES

INSERT INTO bebe (nombre, edad, nombre_padre, telefono) VALUES
('Valentina', 1, 'Carlos Fernández', '8091111111'),
('Santiago', 2, 'Luis Martínez', '8092222222'),
('Camila', 1, 'José Rodríguez', '8093333333'),
('Mateo', 2, 'Miguel Hernández', '8094444444'),
('Isabella', 1, 'Juan Pérez', '8095555555');



-- REGISTROS DE ACTIVIDADES
INSERT INTO actividad (nombre_actividad, dia, hora) VALUES
('Estimulación temprana', 'Lunes', '09:00'),
('Juego sensorial', 'Martes', '10:00'),
('Música para bebés', 'Miércoles', '11:00'),
('Cuentos infantiles', 'Jueves', '09:30'),
('Juegos de movimiento', 'Viernes', '10:30');



-- REGISTROS DE INSCRIPCIONES

INSERT INTO inscripcion (id_bebe, id_actividad) VALUES
(1,1),
(1,3),
(2,2),
(3,1),
(4,5),
(5,4);