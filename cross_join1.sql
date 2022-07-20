CREATE DATABASE administracion;
USE administracion;

drop table if exists comidas, postres;

 create table comidas(
  codigo tinyint unsigned auto_increment,
  nombre varchar(30),
  precio decimal(6,2) unsigned,
  primary key (codigo)
 );

 create table postres(
  codigo tinyint unsigned auto_increment,
  nombre varchar(30),
  precio decimal(5,2) unsigned,
  primary key (codigo)
 );

 insert into comidas values(1,'milanesa y fritas',30.4);
 insert into comidas values(2,'arroz primavera',20.5);
 insert into comidas values(3,'pollo',20.8);

 insert into postres values(1,'flan',10);
 insert into postres values(2,'porcion de torta',20.1);
 insert into postres values(3,'gelatina',8.0);
 
 select comidas.*, Postres.*, comidas.precio+Postres.precio as total
 from comidas cross join postres;
