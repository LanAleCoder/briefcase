DELIMITER $$
DROP PROCEDURE IF EXISTS sp_condicional1 $$
CREATE PROCEDURE sp_condicional1(in edad int )
BEGIN
    if edad <= 30 then 
		Select 'niño' ;
    elseif edad >=  30 then
		select 'adulto';
    END IF;
END$$

DELIMITER $$;