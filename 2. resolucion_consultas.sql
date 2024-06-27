-- Este Script fue generado en un ejercicio realizado en vivo en TodoCode (twitch.tv/todocode)
-- www.todocodeacademy.com
-- Todos los derechos reservados

-- Consultas
-- Listar todos los alumnos inscriptos en el curso de "Guitarra Intermedio"
--Solución 1
SELECT a.nombre, a.apellido
FROM alumnos a
JOIN inscripciones i ON a.id_alumno = i.id_alumno
JOIN cursos c ON i.id_curso = c.id_curso
WHERE c.nombre = "Guitarra Intermedio";

-- Solución 2
SELECT a.nombre, a.apellido
FROM alumnos a, inscripciones i, cursos c
WHERE a.id_alumno = i.id_alumno AND 
		i.id_curso= c.id_curso AND
        c.nombre = "Guitarra Intermedio";

-- Mostrar todas las inscripciones realizadas después del 1 de enero de 2024
SELECT *
FROM inscripciones
WHERE fecha_insc > '2024-01-01';

-- Contar la cantidad de inscripciones abonadas
SELECT COUNT(*)
FROM inscripciones
WHERE abono_insc = TRUE;

-- Listar los cursos de nivel avanzado
SELECT *
FROM cursos
WHERE nivel_habilidad = "Avanzado";
----

-- Listar los nombres y apellidos de los alumnos junto con los nombres de los cursos a los que están inscritos.
SELECT a.nombre, a.apellido, c.nombre
FROM alumnos a
JOIN inscripciones i ON a.id_alumno = i.id_alumno
JOIN cursos c ON i.id_curso = c.id_curso;

-- Obtener el nombre y apellido de los alumnos que están inscritos en más de un curso.
-- Traer los alumnos
-- Contar la cantidad de cursos en la que está cada alumno inscripto
-- Filtrar los que estén en más de 1

SELECT nombre, apellido
FROM alumnos
WHERE id_alumno IN (
	SELECT id_alumno
    FROM inscripciones
    GROUP BY id_alumno
    HAVING COUNT(id_curso)>1   
);

--Mostrar el nombre de cada curso y la cantidad de alumnos inscritos en cada uno.
SELECT c.nombre, COUNT(i.id_alumno)
FROM cursos c
JOIN inscripciones i ON c.id_curso = i.id_curso
GROUP BY c.nombre;


-- Listar los alumnos que no han abonado la inscripción.
SELECT a.nombre, a.apellido
FROM alumnos a, inscripciones i
WHERE a.id_alumno= i.id_alumno 
AND i.abono_insc = FALSE;

SELECT a.nombre, a.apellido
FROM alumnos a
JOIN inscripciones i ON a.id_alumno = i.id_alumno
WHERE i.abono_insc = FALSE;

-- Obtener los nombres de los cursos que tienen al menos un alumno mayor de 20 años inscrito.
SELECT DISTINCT c.nombre
FROM cursos c
JOIN inscripciones i ON c.id_curso = i.id_curso
JOIN alumnos a ON i.id_alumno = a.id_alumno
WHERE DATEDIFF (CURDATE(), a.fecha_nac) / 365 > 20;

-- Listar el nombre y apellido de los alumnos junto con los nombres de los cursos en los que están inscritos, pero solo para aquellos que se inscribieron en 2024.
SELECT a.nombre, a.apellido, c.nombre
FROM alumnos a
JOIN inscripciones i ON a.id_alumno= i.id_alumno
JOIN cursos c ON i.id_curso = c.id_curso
WHERE YEAR(i.fecha_insc) = 2024;
