DROP DATABASE IF EXISTS Control_Academico;
CREATE DATABASE Control_Academico;
USE Control_Academico;

DROP TABLE IF EXISTS Alumno;
CREATE TABLE Alumno (
	carne VARCHAR(16) NOT NULL,
    apellidos VARCHAR (45) NOT NULL,
    nombres VARCHAR (45) NOT NULL,
    email VARCHAR(32) NOT NUll,
    PRIMARY KEY PK_Alummno (carne)
);
DROP TABLE IF EXISTS Horario;
CREATE TABLE Horario(
	horario_id INT NOT NULL AUTO_INCREMENT,
    horario_final TIME NOT NULL,
    horario_inicio TIME NOT NULL,
    PRIMARY KEY PK_Horario (horario_id)
);
DROP TABLE IF EXISTS Salon;
CREATE TABLE Salon(
	salon_id INT NOT NULL AUTO_INCREMENT,
    capacidad INT NOT NULL,
    descripcion VARCHAR(255),
    nombre_salon VARCHAR(255),
    PRIMARY KEY PK_Salon (salon_id)
);
DROP TABLE IF EXISTS Carrera_Tecnica;
CREATE TABLE Carrera_Tecnica(
	codigo_carrera VARCHAR(128) NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    PRIMARY KEY PK_Carrera_Tecnica (codigo_carrera)
);
DROP TABLE IF EXISTS Instructor;
CREATE TABLE Instructor(
	instructo_id INT NOT NULL AUTO_INCREMENT,
    apellidos VARCHAR (45) NOT NULL,
    nombres VARCHAR (45) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(8),
    PRIMARY KEY PK_Instructor(instructo_id)
);
DROP TABLE IF EXISTS Curso;
CREATE TABLE Curso(
	curso_id INT NOT NULL AUTO_INCREMENT,
    ciclo INT,
    cupo_maximo INT,
    cupo_minimo INT,
    descripcion VARCHAR(255),
	id_horario INT,
	id_salon INT,
    id_codigo_carrera VARCHAR(128),
    id_instructor INT,
    PRIMARY KEY PK_Curso(curso_id),
    CONSTRAINT FK_Curso_Horario 
		FOREIGN KEY (id_horario) REFERENCES Horario (horario_id),
	CONSTRAINT FK_Curso_Salon 
		FOREIGN KEY (id_salon) REFERENCES Salon (salon_id),
    CONSTRAINT FK_Curso_Carrera_Tecnica 
		FOREIGN KEY (id_codigo_carrera) REFERENCES Carrera_Tecnica(codigo_carrera),
    CONSTRAINT FK_Curso_Instructor 
		FOREIGN KEY (id_instructor) REFERENCES Instructor (instructo_id)
);
DROP TABLE IF EXISTS Asignacion_Alumno;
CREATE TABLE Asignacion_Alummo(
	asignacion_id VARCHAR(45) NOT NULL,
    carne_alumno VARCHAR(16) NOT NULL,
    id_curso INT NOT NULL,
    fecha_asignacion DATETIME NOT NULL,
    PRIMARY KEY PK_Asignacion_Alummno(asignacion_id),
    CONSTRAINT FK_Carrera_Tecnica_Alumno 
		FOREIGN KEY (carne_alumno) REFERENCES Alumno (carne),
	CONSTRAINT FK_carne_alummno_Curso
		FOREIGN KEY (id_curso) REFERENCES Curso (curso_id)
);
