CREATE DATABASE IN4BV;
USE IN4BV;
/*CREAR UNA TABLA*/
CREATE TABLE Alumno(
	id_carnet INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(20),
    apellido VARCHAR(30),
    edad INT(3),
    telefono INT(8),
    PRIMARY KEY (id_carnet)
);
/* INSERTAR DATOS A LA TABLA */
INSERT INTO Alumno(nombre, apellido, edad, telefono) 
VALUES ('Victor', 'Cancinos', 17, 12345678);
INSERT INTO Alumno(nombre, apellido, edad, telefono) 
VALUES ('Pedro', 'Gonzales', 16, 87654321);
INSERT INTO Alumno(nombre, apellido, edad, telefono) 
VALUES ('Carlos', 'Diaz', 20, 88888888);

/* MOSTRAR DATOS DE UNA TABLA */
SELECT * FROM Alumno;

/* ACTUALIZAR DATOS DE UNA TABLA */
UPDATE Alumno SET nombre='Ricardo', apellido='Gonzales'
WHERE id_carnet=4;

/* ELIMINAR DATOS DE UNA TABLA */
DELETE FROM Alumno WHERE id_carnet = 2;

INSERT INTO Alumno(id_carnet,nombre, apellido, edad, telefono) 
VALUES (2,'Gonzalo', 'Pineda', 11, 88888888);