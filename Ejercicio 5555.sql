create database biblioteca_2020255;
use biblioteca_2020255;



create table autor(
	idAutor INT not null auto_increment,
    nombreAutor varchar(60),
    primary key (idAutor)
);

create table editorial(
	idEditorial int not null auto_increment,
    nombreEditorial varchar(30),
    direccion varchar(100),
    telefono varchar(15),
    primary key(idEditorial)
);

create table tema(
	idTema int not null auto_increment,
    nombreTema varchar(30),
    primary key(idTema)
);


create table socio(
	idSocio INT not null auto_increment,
    nombreCompleto varchar(60),
    direccion varchar(100),
    correo varchar(25),
    telefono varchar(15),
    foto varchar(20),
    primary key (idSocio)
);


create table libro(
	idLibro int not null auto_increment,
    ISSN varchar(20),
    titulo varchar(65),
    numeroEjemplares tinyint,
    autor_idAutor INT,
    editorial_idEditorial int,
    tema_idTema int,
    primary key(idLibro),
    constraint fk_autor_idAutor
    foreign key(autor_idAutor) 
    references autor(idAutor),
    constraint fk_editorial_idEditorial
    foreign key(editorial_idEditorial)
    references editorial(idEditorial),
    constraint fk_tema_idTema
    foreign key (tema_idTema)
    references tema(idTema)
);

create table prestamo(
	idPrestamo int not null auto_increment,
    fechaPrestamo date,
    fechaEntrega date,
    primary key (idPrestamo),
    socio_idSocio int,
    libro_idLibro int,
    constraint fk_socio_idSocio
    foreign key (socio_idSocio)
    references socio(idSocio),
    constraint fk_libro_idLibro
    foreign key(libro_idLibro)
    references libro(idLibro)
);

