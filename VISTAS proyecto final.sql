USE bancaenlinea;

CREATE VIEW vista_be AS
	SELECT C.codigo_cliente AS ID, CONCAT (C.nombrecliente, ' ', C.apellidocliente) AS Nombre,
    CBE.Usuario AS Usuario, CBE.Fecha_decreacion AS Fecha, CBE.estadodecuenta
    FROM Cuenta_Be AS CBE
    INNER JOIN Cliente AS C
    ON CBE.codigo_cl = C.codigo_cliente;
SELECT * FROM vista_be;
DROP VIEW vista_be;

CREATE VIEW vista_Transacciones AS
	SELECT CBE1.codigo_cuentaBE AS ID, CBE1.usuario AS Usuario,
    T.Monto AS Monto, E.Nombreempresa AS Pago_A
    FROM Transaccionessint AS T
    INNER JOIN Cuenta_BE AS CBE1
	ON T.codigo_cBE = CBE1.codigo_cl
    INNER JOIN Empresas AS E
	ON T.id_empre = E.id_empresa;
SELECT * FROM vista_Transacciones;
    DROP VIEW vista_Transacciones;