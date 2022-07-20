	USE `bancaenlinea`;
DROP procedure IF EXISTS `Procesoal`;

DELIMITER $$
USE `bancaenlinea`$$
CREATE PROCEDURE `Procesoal` (IN NombreEmpresa_p VARCHAR (16))
BEGIN
INSERT INTO Empresas (NombreEmpresa)
VALUES (NombreEmpresa_p);
END$$

DELIMITER ;
CALL Procesoal ('TIGO');

Select * from Empresas;

USE `bancaenlinea`;
DROP procedure IF EXISTS `Procesoal2`;

DELIMITER $$
USE `bancaenlinea`$$
CREATE PROCEDURE `Procesoal2` (IN NombreEmpresa_p VARCHAR (16), IN ID INT)
BEGIN
UPDATE Empresas SET NombreEmpresa = NombreEmpresa_p
WHERE id_empresa = ID;
END$$

DELIMITER ;
CALL Procesoal2 ('GOTITA FELIZ', 3);
Select * from Empresas;


USE `bancaenlinea`;
DROP procedure IF EXISTS `Procesoal3`;

DELIMITER $$
USE `bancaenlinea`$$
CREATE PROCEDURE `Procesoal3` (IN ID INT)
BEGIN
DELETE FROM Empresas
WHERE id_empresa = ID;
END$$

DELIMITER ;

CALL Procesoal3 (7);
Select * from Empresas;
