USE administracion;
 drop table comidas;

 -- Creamos la tabla "comidas" con la siguiente estructura:
 create table comidas(
  codigo tinyint unsigned auto_increment,
  nombre varchar(30),
  rubro varchar(20),/*plato principal y postre*/
  precio decimal (5,2) unsigned,
  primary key(codigo)
 );

 -- Ingresamos algunos registros:
 insert into comidas values(1,'milanesa y fritas','plato principal',30.4);
 insert into comidas values(2,'arroz primavera','plato principal',20.5);
 insert into comidas values(3,'pollo','plato principal',20.8);
 insert into comidas values(4,'flan','postre',1);
 insert into comidas values(5,'porcion de torta','postre',20.1);
 insert into comidas values(6,'gelatina','postre',8);

-- Obtenener la combinación de platos y postres 

SELECT C.nombre, C.precio, P.nombre, P.precio
FROM Comidas AS C CROSS JOIN Comidas AS P
WHERE C.rubro = 'plato principal' AND P.rubro = 'postre';

 
 
 