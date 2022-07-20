CREATE DATABASE LIBRERIA;
USE LIBRERIA;

CREATE TABLE IF NOT EXISTS LIBROS (
	codigo INT auto_increment,
    titulo varchar(40) NOT NULl,
    autor varchar(30),
    editorial varchar(15),
    precio DECIMAL(5,2),
    cantidad INT,
    constraint pk_libros primary key(codigo)
    );