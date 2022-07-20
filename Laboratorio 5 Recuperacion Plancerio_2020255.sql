/* 	
RECUPERACIÓNLABORATORIO # 5
Curso: Taller y tecnología
Catedrático: Jorge Luis Pérez Canto

Programador
	Nombre alumno: Pedro Alexander Lancerio Alvarado
	Carné: 2020255
    Código técnico: IN5BV
	Creación: 10/03/2021
*/

DROP DATABASE IF EXISTS DBControlVentas_Plancerio2020255;
CREATE DATABASE DBControlVentas_Plancerio2020255;
USE DBControlVentas_Plancerio2020255;

DROP TABLE IF EXISTS Productos;
CREATE TABLE Productos (
	id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    existencia INT DEFAULT 0,
    precioUnitario decimal (10,2) DEFAULT 0.00,
    precioDocena decimal (10,2) DEFAULT 0.00,
    precioMayor decimal (10,2) DEFAULT 0.00,    
    PRIMARY KEY PK_Productos (id)
);

DROP TABLE IF EXISTS Ventas;
CREATE TABLE Ventas(
	id INT AUTO_INCREMENT,
    fechaVenta DATE NOT NULL,
    PRIMARY KEY PK_Ventas (id)
);

DROP TABLE IF EXISTS DetalleVenta;
CREATE TABLE DetalleVenta(
	codigoDetalleVenta INT AUTO_INCREMENT,
    codigoVenta INT NOT NULL,
    codigoProducto INT NOT NULL,
    cantidadVender INT NOT NULL,
    PRIMARY KEY PK_DetalleVenta (codigoDetalleVenta),
    CONSTRAINT FK_Ventas_DetalleVenta
		FOREIGN KEY (codigoVenta)
        REFERENCES Ventas(id),
	CONSTRAINT FK_Productos_DetalleVenta 
		FOREIGN KEY (codigoProducto)
        REFERENCES Productos(id)
);

CREATE TABLE Compra(
	id int auto_increment NOT NULL,
    fechaCompra date NOT NULL,
    PRIMARY KEY PK_codigoCompra (id)
);

CREATE TABLE DetalleCompra(
	id int auto_increment NOT NULL,
    codigoCompra int NOT NULL,
    cantidadComprar int NOT NULL,
    producto varchar(150) NOT NULL,
    totalCompra decimal (10,2) NOT NULL DEFAULT 0.00,
    codigoProducto int,
    PRIMARY KEY PK_CodigoDetalleVenta (id),
    CONSTRAINT FK_FechaCompra_compra 
        FOREIGN KEY (codigoCompra) 
        REFERENCES compra(id),
    CONSTRAINT FK_CodigoProducto_Productos 
        FOREIGN KEY (codigoProducto) 
        REFERENCES productos(id)
);

/*
	INSTRUCCIONES LABORATORIO # 5
    
    Crear los siguientes procedimientos almacenados:
		1. Insertar Ventas
        2. Insertar Compras
        3. Insertar Detalle Compras
        4. Insertar Producto
        5. Insertar Detalle Ventas
        Nota: El nombre de los procedimientos almacenados y la cantidad de parámetros debe coincidir
                con las llamdas a los procedimientos y los argumentos que aparecen en las últimas líneas de este archivo.
	
    Crear los siguientes trigger:
		1. Trigger que se dispara después de realizar una inserción en la tabla DetalleCompra
			donde ejecute un bloque de código que actualice los siguientes precios:
				precioUnitario = 40% de aumento (ganancia)
                precioDocena = 30% 
                precioMayor = 20%
		2. Trigger que se dispara después de insertar en la table DetalleCompra
			actualizando la existencia de productos (agregando la cantidad comprada).
		3. Trigger que se dispara después de una inserción en la tabla DetalleVenta
			actualizando la existencia (restando la cantidad vendida).
        
*/


-- 1. Procedimiento para insertar ventas
DROP PROCEDURE IF EXISTS sp_agregarVenta;
DELIMITER $$
create procedure sp_agregarVenta(
in fechaVenta date
)
begin 
insert into Ventas(fechaVenta)
values (fechaVenta);
end $$ 
delimiter ;


-- 2. Procedimiento para insertar compras
DROP PROCEDURE IF EXISTS sp_agregarCompra;
DELIMITER $$
create procedure sp_agregarCompra(
in fechaCompra date
)
begin 
insert into Compra(fechaCompra)
values (fechaCompra);
end $$
delimiter ;


-- 3. Procedimiento para insertar detalles de compras
DROP PROCEDURE IF EXISTS sp_AgregarDetalleCompra;
DELIMITER $$
create procedure sp_AgregarDetalleCompra(
in codigoCompra int,
in producto varchar(150),
in cantidadComprar int,
in totalCompra decimal(10.2),
in codigoProducto int
)
begin 
insert into DetalleCompra(codigoCompra,producto,cantidadComprar,totalCompra ,codigoProducto)
values(codigoCompra,producto,cantidadComprar,totalCompra ,codigoProducto);
end $$
delimiter ;
-- 4. Procedimiento para insertar productos
DROP PROCEDURE IF EXISTS sp_AgregarProducto;
DELIMITER $$
create procedure sp_AgregarProducto(
in nombre varchar(50)
)
begin 
insert into Productos(nombre)
values (nombre);
end $$
delimiter ;
-- 5. Procedimiento para insertar Detalle Venta
drop procedure if exists sp_AgregarDetalleVenta;
DELIMITER $$
create procedure sp_AgregarDetalleVenta(
in codigoVenta INT,
in codigoProducto INT,
in cantidadVender INT
)
begin 
insert into DetalleVenta(codigoVenta, codigoProducto, cantidadVender)
values (codigoVenta, codigoProducto, cantidadVender);
end $$
delimiter ;
-- TRIGGERS
-- Trigger 1
drop trigger if exists tr_productos;
delimiter $$
create trigger tr_productos
after insert 
on productos
for each row 
begin 
	INSERT INTO productos(precioUnitario, precioDocena, PrecioMayor)
    values(precioUnitario+(precioUnitario*0.40), precioDocena+(precioDocena*0.30), precioMayor+(precioMayor*0.20));
end $$
delimiter ;
-- Trigger 2
DROP trigger if exists tr_existenciaProducto;
DELIMITER $$
create trigger tr_existenciaProducto
after insert 
on DetalleCompra
for each row
begin 
update productos set existencia = existencia + cantidadComprar;
end $$
delimiter ;
-- Trigger 3
DROP trigger if exists tr_ExistenciaVenta;
DELIMITER $$
create trigger tr_existenciaVenta
after insert 
on DetalleVenta
for each row
begin 
update productos set existencia = existencia - cantidadVender;
end $$
delimiter ;

-- Al finalizar se ejecutar lo siguiente

call sp_agregarVenta(now());
call sp_agregarVenta('2019-12-01');
call sp_agregarVenta('2010-09-11');
call sp_agregarVenta('2020-01-01');
call sp_agregarVenta('2003-03-01');

call sp_agregarCompra('2012-12-02');
call sp_agregarCompra('2010-12-02');
call sp_agregarCompra('2009-09-12');
call sp_agregarCompra('2009-01-02');
call sp_agregarCompra('2003-03-02');

call sp_AgregarProducto('Televisores 65 Curve LG');
call sp_AgregarProducto('Laptop AlienWare i9');
call sp_AgregarProducto('Lavadoras ');
call sp_AgregarProducto('Equipo de Sonido AIWA');
call sp_AgregarProducto('Walkman Sony Antishok');

call sp_AgregarDetalleCompra(1,'Televisores 65 Curve LG',10,100000,1);
call sp_AgregarDetalleCompra(2,'Laptop AlienWare i9',5,100000,2);
call sp_AgregarDetalleCompra(3,'Lavadoras ',20,50000,3);
call sp_AgregarDetalleCompra(4,'Equipo de Sonido AIWA',10,250000,4);
call sp_AgregarDetalleCompra(5,'Walkman Sony Antishok',10,456666,5);

call sp_AgregarDetalleVenta(1,1,6);
call sp_AgregarDetalleVenta(2,2,4);
call sp_AgregarDetalleVenta(3,3,4);
call sp_AgregarDetalleVenta(4,5,2);
call sp_AgregarDetalleVenta(5,5,5);

select * from Ventas;
select * from Productos;
select * from DetalleVenta;
