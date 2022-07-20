/* DML */
/* INSERT, SELECT, UPDATE, DELETE */
USE IN4BV;
/* INSERTAR DATOS A LA TABLA */
INSERT INTO Materia(nombre_materia, salon, creditos)
VALUES ('Informatica', 'c-23', 10);
INSERT INTO Materia(nombre_materia, salon, creditos)
VALUES ('Mecanica', 'b-18', 10);
INSERT INTO Materia(nombre_materia, salon, creditos)
VALUES ('Dibujo', 'c-21', 10);
INSERT INTO Materia(nombre_materia, salon, creditos)
VALUES ('Electronica', 'c-22', 10);

INSERT INTO Grado(nombre_grado)
VALUES ('4to');
INSERT INTO Grado(nombre_grado)
VALUES ('5to');
INSERT INTO Grado(nombre_grado)
VALUES ('6to');

INSERT INTO Seccion(nombre_seccion)
VALUES ('Seccion A');
INSERT INTO Seccion(nombre_seccion)
VALUES ('Seccion B');
INSERT INTO Seccion(nombre_seccion)
VALUES ('Seccion C');
INSERT INTO Seccion(nombre_seccion)
VALUES ('Seccion D');
INSERT INTO Seccion(nombre_seccion)
VALUES ('Seccion E');

INSERT INTO Alumno(nombre, apellido, edad, telefono, id_materia, id_grado, id_seccion) 
VALUES ('Victor', 'Cancinos', 17, 12345678, 1, 1, 2);
INSERT INTO Alumno(nombre, apellido, edad, telefono, id_materia, id_grado, id_seccion) 
VALUES ('Jose', 'Perez', 18, 12345678, 1, 2, 1);
INSERT INTO Alumno(nombre, apellido, edad, telefono, id_materia, id_grado, id_seccion) 
VALUES ('Ricardo', 'Gonzales', 18, 12345678, 1, 2, 1);
INSERT INTO Alumno(nombre, apellido, edad, telefono, id_materia, id_grado, id_seccion) 
VALUES ('Jorge', 'Tul', 18, 00000001, 2, 2, 2);

/* MOSTRAR DATOS DE UNA TABLA */
SELECT * FROM Alumno;
SELECT * FROM Grado;
SELECT * FROM Seccion;
SELECT * FROM Materia;

/* ACTUALIZAR DATOS DE UNA TABLA */
UPDATE Alumno SET edad = 5
WHERE id_carnet=4;

UPDATE Materia SET nombre_materia = 'Electricidad', salon='b-10'
WHERE id_materia = 5;

/* ELIMINAR DATOS DE UNA TABLA */
DELETE FROM Alumno WHERE id_carnet = 4;
DELETE FROM Materia WHERE id_materia = 3;
