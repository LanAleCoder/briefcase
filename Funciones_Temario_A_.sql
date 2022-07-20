/* 
Actividad de aprendizaje.
Recuperación Laboratorio 4.
Temario: A

Curso: Taller II
Catedrático: Jorge Pérez.

	Nombre alumno: ____________
	Carné:	___________________
	Sección: __________________
	Fecha: 10/03/2021
    
*/

DROP TABLE IF EXISTS DBFunciones____;
CREATE DATABASE DBFunciones______;

USE DBFunciones_;

CREATE TABLE Resultados (
	id INT AUTO_INCREMENT NOT NULL,
    area DECIMAL(10,2),
    impares VARCHAR(45),
    menor INT,
    PRIMARY KEY PK_Funciones_Id (id)
);

-- INSTRUCCIONES:

-- 1. Crear un procedimiento almacenado para insertar registros en la tabla Resultados



-- 2. Crear una función para calcular el área de un triangulo.



-- 3. Crear una función que acumule en una variable todos los números impares del 1 al N.



-- 4. Crear una función para calcular el número menor de 4 números enteros.



-- 5. Llamar al procedimiento almacenado creado anteriormente para insertar el resultado de las funciones en la tabla Resultados




