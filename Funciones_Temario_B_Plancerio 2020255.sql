/* 
Actividad de aprendizaje.
Recuperación Laboratorio 4.
Temario: B

Curso: Taller II
Catedrático: Jorge Pérez.

	Nombre alumno: Pedro Alexander Lancerio Alvarado
	Carné:	2020255
	Sección:IN5BV
	Fecha: 10/03/2021
    
*/

DROP TABLE IF EXISTS DBFunciones______;
DROP DATABASE IF EXISTS DBFunciones______;
CREATE DATABASE DBFunciones______;

USE DBFunciones______;

CREATE TABLE Resultados (
	id INT AUTO_INCREMENT NOT NULL,
    area DECIMAL(10,2),
    pares VARCHAR(45),
    mayor INT,
    PRIMARY KEY PK_Funciones_Id (id)
);

-- INSTRUCCIONES:

-- 1. Crear un procedimiento almacenado para insertar registros en la tabla Resultados
DROP procedure IF EXISTS sp_insertarResultados;
DELIMITER $$
create procedure sp_insertarResultados()
begin 
insert into Resultados(id, area, pares,mayor)
values (id, area, pares,mayor);
end $$
DELIMITER ;
-- 2. Crear una función para calcular el área de un trapecio.
DROP function IF EXISTS fn_TrapaecioArea;
DELIMITER $$
create function fn_TrapaecioArea(b1 int, b2 int, h int) returns int
reads sql data deterministic
begin 
    declare area int;
    set area = (b1*b2 /2)*(h);
    return area;
end $$
    delimiter ;
    
select fn_TrapaecioArea(5,2,8);
-- 3. Crear una función que acumule en una variable todos los números pares del 1 al N.
DROP function IF EXISTS fn_variables;
DELIMITER $$
create function fn_variables() returns bigint
reads sql data deterministic 
begin 
	declare contadorP BIGINT DEFAULT 0;
    declare acumulador varchar(45);
    set acumulador = " ";
    set contadorP = 0;
    mibucle: repeat 
    set contadorP = contadorP+2;
    set acumulador  = concat(acumulador, contadorP, ",");
    until contadorP = 8
    end repeat mibucle; 
    return contadorP;
end $$
delimiter ;
SELECT fn_variables();
-- 4. Crear una función para calcular el número Mayor de 4 números enteros.
DROP function IF EXISTS fn_NumeroMayor;
DELIMITER $$
create function fn_NumeroMayor(numero1 int,numero2 int,numero3 int,numero4 int) returns decimal(4.0)
reads sql data deterministic 
begin 
    declare resultado int;
    declare calcular int;
    set calcular = fn_NumeroMayor;
    set resultado = max(fn_NumeroMayor);
    return resultado;
end $$
delimiter ;
select fn_NumeroMayor(4,1,2,3);

-- 5. Llamar al procedimiento almacenado creado anteriormente para insertar el resultado de las funciones en la tabla Resultados
CALL sp_insertarResultados();






