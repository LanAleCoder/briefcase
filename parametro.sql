DELIMITER $$
DROP PROCEDURE IF EXISTS sp_EjemploPararametro1 $$
CREATE PROCEDURE sp_EjemploPararametro1(inout p_p1 INT)
BEGIN
    SET p_p1= p_p1 -5;
	
	
END$$

DELIMITER $$;
