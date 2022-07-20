INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Franshesco', 'Sosa', 'Zona 4', 51520368, 'M', 'Guatemalteco',15270102);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Juan', 'Luna', 'Zona 5', 50236740, 'M', 'Guatemalteco',848916555);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Ben', 'Parker', 'Zona 1', 18234598, 'M', 'Guatemalteco',48120541);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Pedro', 'Santana', 'Zona 7', 45874954, 'M', 'Guatemalteco',456010201);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Vilma', 'Contreras', 'Zona 9', 484894561, 'F', 'Guatemalteca',51311564);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Gabriela', 'Tobias', 'Zona 15', 48526478, 'F', 'Guatemalteca',16320486);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Tony', 'Stark', 'Mixco', 48952130, 'M', 'Estadounidense',4698845);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Cristiano', 'Ronaldo', 'Cayala', 489489652, 'M', 'Portugues',589498489);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Jefferson', 'Gutierrez', 'Antigua', 48965123, 'M', 'Guatemalteco',846505);
INSERT INTO Cliente (Nombrecliente, Apellidocliente, Direccion, Telefono, Sexo, Nacionalidad, IdentificacionDPIOPASSPORT)
VALUES ('Carlos', 'Caal', 'Zona 18', 5156161, 'M', 'Guatemalteco', 489845);

#CUENTA BANCO
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Monetaria', 'Quetzal', 10000, 1);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Monetaria', 'Quetzal', 50000, 2);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('F. Retiros', 'Quetzal', 100000, 3);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Depositos', 'Quetzal', 5000, 4);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Ahorro', 'Quetzal', 200000, 5);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Tarjeta', 'Quetzal', 1000, 6);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Tarjeta', 'Dolares', 999999, 7);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Tarjeta', 'Quetzal', 155918, 8);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Hipoteca', 'Quetzal', 1000, 9);
INSERT INTO Cuentabanco (tipo_decuenta, moneda, saldo, codigo_BE)
VALUES ('Pensiones', 'Quetzal', 50000, 10);

INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Franso777', MD5('Molvu45'), 'Activo', '17-05-2018',1);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Rubiuh', MD5('Noseamalo'), 'Inactivo', '18-06-2018',2);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Tupperaxe', MD5('Bicarbonatosodico'), 'Activo', '20-08-2018',3);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('itsme78', MD5('Cubos22'), 'Inactivo', '14-09-2018',4);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Donhiapelos', MD5('Carnitaasada'), 'Activo', '15-09-2018',5);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Gabbs18', MD5('kuki20'), 'Activo', '20-11-2018',6);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Ironman', MD5('Yosoyinevitable'), 'Activo', '21-12-2018',7);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Elbicho', MD5('Siiiiiimmm'), 'Activo', '30-12-2018',8);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Jeffthe', MD5('Maincra45'), 'Inactivo', '18-01-2019',9);
INSERT INTO CUENTA_BE(usuario, pass, estadodecuenta, fecha_decreacion, codigo_cl)
VALUES ('Loco32', MD5('Lamparabrillosa'), 'Activo', '17-05-2018',10);

INSERT INTO Empresas (Nombreempresa)
VALUES ('Eggsa');
INSERT INTO Empresas (Nombreempresa)
VALUES ('Fundacion Kinal');
INSERT INTO Empresas (Nombreempresa)
VALUES ('Empagua');
INSERT INTO Empresas (Nombreempresa)
VALUES ('Municipalidad');
INSERT INTO Empresas (Nombreempresa)
VALUES ('Energuate');
INSERT INTO Empresas (Nombreempresa)
VALUES ('Claro');

INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (500, 1,6);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (5000, 2,5);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (6000, 3,4);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (7895, 4,3);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (3564, 5,2);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (300, 6,1);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (459, 7,2);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (789, 8,4);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (165, 9,6);
INSERT INTO Transaccionessint (monto, codigo_cBE, id_empre)
VALUES (899, 10,3);

SELECT * FROM Cliente;
SELECT * FROM Cuentabanco;
SELECT * FROM Cuenta_BE;
SELECT * FROM Empresas;
SELECT * FROM Transaccionessint;