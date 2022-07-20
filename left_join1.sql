USE administracion;

/* left join */

drop table if exists libros, editoriales;

 create table libros(
  codigo int unsigned auto_increment,
  titulo varchar(40) not null,
  autor varchar(30) not null default 'Desconocido',
  codigoeditorial tinyint unsigned not null,
  precio decimal(5,2) unsigned,
  cantidad tinyint unsigned default 0,
  primary key (codigo)
 );

 create table editoriales(
  codigo tinyint unsigned auto_increment,
  nombre varchar(20) not null,
  primary key(codigo)
 );
 
 insert into editoriales (nombre) values('Paidos');
 insert into editoriales (nombre) values('Emece');
 insert into editoriales (nombre) values('Planeta');
 insert into editoriales (nombre) values('Sudamericana');

 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('El Aleph','Borges',3,43.5,200);
 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll',2,33.5,100);
 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Aprenda PHP','Mario Perez',1,55.8,50);
 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Java en 10 minutos','Juan Lopez',1,88,150);
 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Alicia a traves del espejo','Lewis Carroll',1,15.5,80);
 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Cervantes y el quijote','Borges- Bioy Casares',3,25.5,250);
 insert into libros (titulo, autor,codigoeditorial,precio,cantidad)
  values('Aprenda Java en 10 minutos','Lopez Juan',5,28,100);


  SELECT * FROM Editoriales;
  
  SELECT * FROM libros;
  
  SELECT * FROM Editoriales INNER JOIN Libros 
  On Editoriales .codigo = Libros.codigoeditorial;
  
  select * from Editorial LEFT JOIN Libros
  ON Editoriales.codigo = Libros.codigoeditorial;
  
  SELECT * FROM Libros LEFT JOIN Editoriales
  ON Editoriales.codigo = Libros.codigoeditorial;
  
  /* Encontrar valores de la tabla Editoriales que 
  esten presentes en la tabla libros, usando where. */
  
  SELECT * FROM Editoriales LEFT JOIN Libros
  ON Editoriales.codigo = Libros.codigoeditorial
  WHERE Libros.codigoeditorial IS NOT NULL;
  
  -- Mostrar las Editoriales que no estan presentes en Libros
  
  SELECT * FROM Editoriales LEFT JOIN libros
  ON Editoriales.codigo = libros.codigoeditorial
  WHERE Libros.codigoeditorial IS NULL;
  
  -- Mostrar valores de la tabla Libro que no esten presentes en la tabla Editoriales
  SELECT * FROM Libros LEFT JOIN Editoriales
  ON Editoriales.codigo = Libros.codigoeditorial
  WHERE
  
  
  
  
  