DELIMITER $$
DROP PROCEDURE IF EXISTS sp_bucle1 $$
CREATE PROCEDURE sp_bucle1()
BEGIN
	DECLARE i TINYINT unsigned;
    DECLARE acumulador VARChAR (45);
    set i = 0 ;
    SET acumulador = ' ';
    miblucle : repeat
		set i = i+2;
        set acumulador = concat(acumulador, i, ',');
        until  i = 4
    end repeat miblucle;
END$$

DELIMITER $$;