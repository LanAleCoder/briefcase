/* DDL */
/* CREATE, DROP, ALTER, TRUNCATE */

CREATE DATABASE IN4BV;
USE IN4BV;
/*CREAR UNA TABLA*/

CREATE TABLE Materia(
	id_materia INT AUTO_INCREMENT NOT NULL,
    nombre_materia VARCHAR(20) NOT NULL,
    salon VARCHAR(10) NOT NULL,
    creditos INT(3) NOT NULL,
    PRIMARY KEY (id_materia)
);

CREATE TABLE Grado(
	id_grado INT AUTO_INCREMENT NOT NULL,
    nombre_grado VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_grado)
);

CREATE TABLE Seccion(
	id_seccion INT AUTO_INCREMENT NOT NULL,
    nombre_seccion VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_seccion)
);

CREATE TABLE Alumno(
	id_carnet INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    edad INT(3) NOT NULL,
    telefono INT(8) NOT NULL,
    id_materia INT NOT NULL,
    id_grado INT NOT NULL,
    id_seccion INT NOT NULL,
    PRIMARY KEY (id_carnet),
    FOREIGN KEY (id_materia) REFERENCES Materia(id_materia),
    FOREIGN KEY (id_grado) REFERENCES Grado(id_grado),
    FOREIGN KEY (id_seccion) REFERENCES Seccion(id_seccion)
);
