USE IN4BV;
#Consultas

#Busqueda columnas especifica
SELECT nombre, apellido FROM Alumno;

#Busqueda espefica por medio del carnet (Condicionales)
SELECT * FROM Alumno WHERE id_carnet = 10;
SELECT * FROM Alumno WHERE apellido = 'Tul';

#Condicionales
/*
	Mayor que >
    Menor que <
    Mayor o igual que >=
    Mayor o menor que <=
    Distinto de !=
*/

SELECT * FROM Alumno WHERE edad>18;
SELECT * FROM Alumno WHERE apellido != 'Gonzales';

#BETWEEN Filtra información por medio de un rango
SELECT * FROM Alumno WHERE id_carnet BETWEEN 2 AND 4;

#LIKE (Buscar probabilidades en los resultados)
	#Buscar coincidencia al principio
	SELECT * FROM Materia WHERE nombre_materia LIKE 'Elec%';
	SELECT * FROM Materia WHERE salon LIKE 'c%';
	#Buscar coincidencia al final
	SELECT * FROM Materia WHERE nombre_materia LIKE '%a';
	#Buscar coincidencia en medio de la palabra
	SELECT * FROM Materia WHERE nombre_materia LIKE '%ani%';

#Buscar por medio de varias coincidencias (IN)
SELECT * FROM Alumno WHERE nombre IN ('Victor', 'Carlos', 'Juanito', 'Chepe');

#Buscar datos y ordenarlos
SELECT * FROM Alumno WHERE id_carnet ORDER BY apellido ASC;
SELECT * FROM Alumno WHERE id_carnet ORDER BY apellido DESC;

# COUNT -> Es un contador de datos repetidos que estan agrupados
SELECT nombre, count(*) FROM Alumno GROUP BY nombre;

SELECT edad FROM Alumno;

SELECT AVG(edad) AS Promedio FROM Alumno;