USE bancaenlinea;
CREATE TABLE Historial_transaccion (
No_transaccion_t INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
Monto_t INT (5) NOT NULL,
codigo_cBE_t INT,
id_empre_t INT
);

DROP TRIGGER IF EXISTS Htri;
DELIMITER $$
CREATE TRIGGER Htri AFTER INSERT ON Transaccionessint
FOR EACH ROW
BEGIN
INSERT INTO Historial_transaccion (Monto_t, codigo_cBE_t, id_empre_t)
VALUES (NEW.Monto, NEW.codigo_cBE, NEW.id_empre);
END $$
DELIMITER ;

SELECT * FROM Historial_transaccion;