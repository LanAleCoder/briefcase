CREATE DATABASE TIENDA_WEB;

USE TIENDA_WEB;

CREATE TABLE GENERO (
idGenero INT NOT NULL,
descripcion varchar(45),
primary key (idGenero)
);

CREATE TABLE IF NOT EXISTS Clientes(
	idCliente INT NOT NULL auto_increment,
    NOMBRES VARCHAR(45),
    APELLIDOS VARCHAR(45),
    DIRECCION VARCHAR(45),
    TELEFONO INT NULL,
    GENERO_idGenero int not null,
    primary key (idCliente),
    Constraint fk_GeneroClientes
    Foreign key (GENERO_idGenero)
    references GENERO (idGenero)
    );
    
    CREATE TABLE IF NOT EXISTS MetodoPago(
    idMetodoPago INT NOT NULL,
    descripcion varchar(45),
    primary key(idMetodoPago)
    );
    
    CREATE TABLE IF NOT exists tipoPedido(
    idTipoPedido INT NOT NULL,
    descripicion VARCHAR (45),
    primary key (idTipoPedido)
    );
    
    create table if not exists Pedidos (
    idPedido INT NOT NULL,
    fecha date null,
    tipoPedido_idTipoPedido int not null,
    metodoPago_idMetodoPago int not null,
    montoTotal double null,
    Clientes_idCliente int not null,
    primary key (idPedido),
    constraint fk_Pedidos_tipoPedido
    foreign key (tipoPedido_idTipoPedido)
    references tipoPedido(idTipoPedido),
    constraint fk_Pedidos_metodoPago
    foreign key (metodoPago_idMetodoPago)
    references MetodoPago (idMetodoPago),
    constraint fk_Pedidos_Clientes
    foreign key (Clientes_idCliente)
    references Clientes (idCliente)
    );
    
    CREATE TABLE IF NOT EXISTS PedidoProductos(
    Pedidos_idPedido INT not null,
    Productos_idProductos int not null,
    cantidad int,
    primary key (Pedidos_idPedido, Productos_idProductos),
    constraint fk_PedidosProductos_Pedidos
    foreign key(Pedidos_idPedido)
    references pedidos(idPedido),
    constraint fk_PedidoProducto_Productos
    foreign key (Productos_idProductos)
    references 
    );
    
    INSERT INTO Genero Values (1, "hombre");
    

    
    
    
    

