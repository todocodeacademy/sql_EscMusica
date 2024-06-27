-- Creates
CREATE TABLE alumnos (
    id_alumno INT PRIMARY KEY,
    apellido VARCHAR(50),
    nombre VARCHAR(50),
    fecha_nac DATE,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY,
    nombre VARCHAR(50),
    nivel_habilidad VARCHAR(20),
    tipo_instrumento VARCHAR(20)
);

-- No se incluyen FKs
CREATE TABLE Inscripciones (
    id_inscripcion INT PRIMARY KEY,
    fecha_insc DATE,
    abono_inscrip BOOLEAN,
    id_alumno INT,
    id_curso INT,
);

-- INSERTS

INSERT INTO `alumnos` (`id_alumno`, `apellido`, `nombre`, `fecha_nac`, `direccion`, `telefono`, `email`) VALUES
(1, 'Perez', 'Juan', '1996-06-10', 'Calle Falsa 123', '123456789', 'juan.perez@example.com'),
(2, 'Gonzalez', 'Maria', '1999-03-20', 'Avenida Siempre Viva 742', '987654321', 'maria.gonzalez@example.co'),
(3, 'Lopez', 'Carlos', '1990-11-21', 'Calle Principal 456', '456123789', 'carlos.lopez@example.com'),
(4, 'Martinez', 'Ana', '1991-11-23', 'Calle Secundaria 789', '789123456', 'ana.martinez@example.com'),
(5, 'Fernandez', 'Lucia', '1995-05-04', 'Calle Tercera 321', '321654987', 'lucia.fernandez@example.c'),
(6, 'Sanchez', 'Diego', '2001-12-25', 'Calle Cuarta 654', '654987321', 'diego.sanchez@example.com');


INSERT INTO cursos (id_curso, nombre, nivel_habilidad, tipo_instrumento) VALUES
(1, 'Guitarra Principiante', 'Principiante', 'Guitarra'),
(2, 'Guitarra Intermedio', 'Intermedio', 'Guitarra'),
(3, 'Guitarra Avanzado', 'Avanzado', 'Guitarra'),
(4, 'Piano Principiante', 'Principiante', 'Piano'),
(5, 'Piano Intermedio', 'Intermedio', 'Piano'),
(6, 'Piano Avanzado', 'Avanzado', 'Piano'),
(7, 'Violín Principiante', 'Principiante', 'Violín'),
(8, 'Violín Intermedio', 'Intermedio', 'Violín'),
(9, 'Violín Avanzado', 'Avanzado', 'Violín');


INSERT INTO inscripciones (id_inscripcion, fecha_insc, abono_inscrip, id_alumno, id_curso) VALUES
(1, '2024-01-05', TRUE, 1, 1),
(2, '2024-01-10', FALSE, 2, 2),
(3, '2024-02-15', TRUE, 3, 3),
(4, '2024-03-20', FALSE, 4, 4),
(5, '2024-04-25', TRUE, 5, 5),
(6, '2024-05-30', FALSE, 6, 6),
(7, '2024-01-15', TRUE, 1, 2),
(8, '2024-02-10', TRUE, 2, 3),
(9, '2024-03-05', FALSE, 3, 1),
(10, '2024-04-01', TRUE, 4, 6),
(11, '2024-05-05', FALSE, 5, 4),
(12, '2024-06-01', TRUE, 6, 9),
(13, '2024-01-20', FALSE, 1, 5),
(14, '2024-02-25', TRUE, 2, 7),
(15, '2024-03-30', FALSE, 3, 8);