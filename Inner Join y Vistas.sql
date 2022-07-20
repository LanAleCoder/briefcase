USE IN4BV;

#USO DE LAS VISTAS
CREATE VIEW vista_alumno AS
	SELECT a.id_carnet AS Carnet, CONCAT(a.nombre,' ',a.apellido) AS NombreCompleto,
		m.nombre_materia AS Materia,
        g.nombre_grado AS Grado,
        s.nombre_seccion AS Seccion
	FROM Alumno AS a
    INNER JOIN Materia AS m ON a.id_materia = m.id_materia
    INNER JOIN Grado AS g ON a.id_grado = g.id_grado
    INNER JOIN Seccion AS s ON a.id_seccion = s.id_seccion;

SELECT * FROM vista_alumno;
        
/*Conceptos
	AS -> Brinda un alias(apodo) a la columna(campo) de la tabla
    INNER JOIN -> Unir la tabla Materia con la tabla alumno
    ON -> Iguala la llave foranea(Tabla Alumno) 
			con la llave primaria(Tabla Materia)
*/

#Mandar a llamar a la vista ya creada		
SELECT * FROM vista_alumno;