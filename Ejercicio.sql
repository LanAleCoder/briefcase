CREATE DATABASE EJERCICIO1;
USE EJERCICIO1;

CREATE TABLE IF NOT EXISTS Estudiantes(
carnet INT NOT NULL,
nombres varchar(70),
apellidos varchar(70),
grado varchar(70),
fechaNac DATE,
email varchar(45),
primary key(carnet)
);

CREATE TABLE IF NOT EXISTS TipoTelefono( 
idTipoTelefono int not null,
descripcion varchar(45),
primary key (idTipoTelefono)
);

CREATE TABLE IF NOT EXISTS Telefono(
numeroTelefono INT NOT NULL,
Estudiante_carnet INT NOT NULL,
TipoTelefono_idTipoTelefono INT NOT NULL,
PRIMARY KEY(numeroTelefono),
INDEX fk_Telefonos_Estudiantes_idx (Estudiante_carnet ASC),
INDEX fk_Telefonos_TipoTelefonos_idx (TipoTelefono_idTipoTelefono ASC),
constraint fk_telefonos_Estudiantes
foreign key(Estudiante_carnet)
references Estudiantes(carnet),
constraint fk_Telefonos_TipoTelefonos
foreign key(TipoTelefono_idTipoTelefono)
references TipoTelefono (idTipoTelefono)
);