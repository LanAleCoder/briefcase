use dbTest;

DROP TABLE IF EXISTS Libros;
create table Libros(
codigo int auto_increment,
titulo varchar(45),
autor varchar(45),
editorial varchar(45),
precio decimal,
stock int,
primary key pk_Libros (codigo)
);

DROP TABLE IF EXISTS Ventas;
Create table ventas(
numero int auto_increment,
codigoLibro int, 
precio decimal,
cantidad decimal,
primary key pk_ventas(numero)
);


INSERT INTO libros(titulo, autor, editorial, precio, stock)
VALUES ('Uno','Richard Bach','Planeta',15.00,100);   
INSERT INTO libros(titulo, autor, editorial, precio, stock)
VALUES ('Ilusiones','Richard Bach','Planeta',18.00,50);
INSERT INTO libros(titulo, autor, editorial, precio, stock)
VALUES ('El aleph','Borges','Emece',25.00,200);
INSERT INTO libros(titulo, autor, editorial, precio, stock)
VALUES ('Aprenda PHP','Mario Molina','Emece',45.00,200);

Select * from Libros;
Select * from Ventas;

DELIMITER $$
create trigger tr_Ventas_Before_Insert
Before insert 
on ventas
for each row
begin
	Update Libros SET stock = stock - NEW.cantidad
    where libros.codigo = new.codigolibro;
end $$
delimiter ;

insert into Ventas(codigolibro, precio, cantidad)
values(1,15,3);

select * from libros;

DELIMITER $$
CREATE trigger tr_ventas_delete
before delete
on ventas
for each row
begin
	update libros set stock = stock + old.cantidad
    where libros.codigo = old.codigolibro;
end $$
delimiter ;

delete from ventas where codigolibro = 1;