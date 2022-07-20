/* 	
LABORATORIO # 5
Curso: Taller y tecnología
Catedrático: Jorge Luis Pérez Canto

Programador
	Nombre alumno: Pedro Alexander Lancerio Alvarado
	Carné:	2020255
    Código técnico: IN5BV
	Creación
		04/03/2021
        Creación de base de datos
        Creación de entidad Laboratorio
	Modificaciones
*/

DROP DATABASE IF EXISTS DBControlVentas_________;
CREATE DATABASE DBControlVentas_________;
USE DBControlVentas_________;

DROP TABLE IF EXISTS Productos;
CREATE TABLE Productos (
	codigoProducto INT AUTO_INCREMENT,
    nombreProducto VARCHAR(50) NOT NULL,
    existencia INT DEFAULT 0,
    precioUnitario decimal (10,2) DEFAULT 0.00,
    PrecioDocena decimal (10,2) DEFAULT 0.00,
    PrecioMayor decimal (10,2) DEFAULT 0.00,    
    PRIMARY KEY PK_Productos (codigoProducto)
);

DROP TABLE IF EXISTS Ventas;
CREATE TABLE Ventas(
	codigoVenta INT AUTO_INCREMENT,
    fechaVenta DATE NOT NULL,
    PRIMARY KEY PK_Ventas (codigoVenta)
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
        REFERENCES Ventas(codigoVenta),
	CONSTRAINT FK_Productos_DetalleVenta 
		FOREIGN KEY (codigoProducto)
        REFERENCES Productos(codigoProducto)
);

CREATE TABLE Compra(
	codigoCompra int auto_increment NOT NULL,
    fechaCompra date NOT NULL,
    PRIMARY KEY PK_codigoCompra (codigoCompra)
);

CREATE TABLE DetalleCompra(
	CodigoDetalleCompra int auto_increment NOT NULL,
    CodigoCompra int NOT NULL,
    Producto varchar(150) NOT NULL,
    CantidadComprar int NOT NULL,
    totalCompra decimal (10,2) NOT NULL DEFAULT 0.00,
    CodigoProducto int,
    PRIMARY KEY PK_CodigoDetalleVenta (CodigoDetalleCompra),
    CONSTRAINT FK_FechaCompra_compra 
        FOREIGN KEY (codigoCompra) 
        REFERENCES compra (CodigoCompra),
    CONSTRAINT FK_CodigoProducto_Productos 
        FOREIGN KEY (CodigoProducto) 
        REFERENCES productos(CodigoProducto)
);

/*
	INSTRUCCIONES LABORATORIO # 5
    
    SERIE I:
    Crear los siguientes procedimientos almacenados:
		1. Insertar ventas
        2. Insertar Compra
        3. Insertar Detalle Compra
        4. Insertar Producto
        5. Insertar Detalle Venta
	
    SERIE II
    Crear los siguientes trigger:
		1. Trigger que se dispara después de realizar una inserción en la tabla DetalleCompra
			donde ejecute un bloque de código que actualice los siguientes precios de la tabla Productos:
				precioUnitario = 35% de aumento (ganancia)
                precioDocena = 25% 
                precioMayor = 15%
		2. Trigger que se dispara después de insertar en DetalleCompra
			actualizando la existencia de productos (agregando la cantidad comprada).
		3. Trigger que se dispara después de una inserción en la tabla DetalleVenta
			actualizando la existencia (restando la cantidad vendida).
        
*/



-- SERIE I


-- 1. Procedimiento para insertar ventas
DELIMITER $$
CREATE procedure sp_agregarVenta(
in codigoVenta int,
in fechaVenta date
)
begin 
	INSERT INTO Ventas (codigoVenta, fechaVenta)
    values(codigoVenta, fechaVenta);
end $$
delimiter ;
-- 2. Procedimiento para insertar compras
DELIMITER $$
create procedure sp_agergarcompra(
IN codigoCompra int ,
IN fechaCompra date
)
begin
	INSERT INTO compra(codigoCompra, fechaCompra)
    values (codigoCompra, fechaCompra);
end$$
delimiter ;

-- 3. Procedimiento para insertar detalles de compras
create procedure sp_agregardetallecompra(
in CodigoDetalleCompra int,
IN CodigoCompra int,
IN Producto varchar(150),
IN CantidadComprar int,
IN totalCompra decimal (10,2),
IN CodigoProducto int
)
begin
	insert into DetalleCompra(codigoDetallecompra,codigoCompra, producto,cantidadcomprar,totalcompra,codigoproducto)
    values(codigoDetalleCompra,codigoCompra,producto,cantidadComprar,totalCompra,codigoProducto)
end$$
delimiter ;
-- 4. Procedimiento para insertar producto
DELIMITER $$
CREATE PROCEDURE sp_AgregarProducto(
in	codigoProducto INT ,
in    nombreProducto VARCHAR(50),
in    existencia INT ,
in    precioUnitario decimal (10,2),
in    PrecioDocena decimal (10,2),
in PrecioMayor decimal (10,2) 
)
begin
	insert into producto(codigoProducto,nombreProducto,existencia,precioUnitario,PrecioDocena,PrecioMayor)
    values(codigoProducto,nombreProducto,existencia,precioUnitario,PrecioDocena,PrecioMayor);
end $$
delimiter ;
-- 5. Procedimiento para insertar Detalle Venta
DELIMITER $$
CREATE PROCEDURE sp_AgregarDetalleVenta(
in codigoDetalleVenta INT,
in codigoVenta INT,
in codigoProducto INT,
in cantidadVender INT
)
begin 
	insert into DetalleVenta(codigoDetalleVenta,codigoVenta,codigoProducto,cantidadVender)
    values (codigoDetalleVenta,codigoVenta,codigoProducto,cantidadVender);
end $$
delimiter ;
-- SERIE II

-- 1. Trigger detalle compra después de inserción 1 (actualización de precios)
drop trigger if exists tr_productos;
delimiter $$
create trigger tr_productos
after insert 
on productos
for each row 
begin 
	INSERT INTO PRODUCTO(precioUnitario)
    values(precioUnitario+(precioUnitario*0.35), precioDocena+(precioDocena*0.25), precioMayor+(precioMayor*0.15));
end $$
delimiter ;
-- 2. Trigger detalle compra después de inserción 2 (actualización de existencias)
delimi




-- 3. Trigger detalle Venta después de inserción 1 (actualización de existencias)










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
