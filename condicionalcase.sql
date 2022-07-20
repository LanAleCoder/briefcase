DELIMITER $$
DROP PROCEDURE IF EXISTS sp_condicionalCase $$
CREATE PROCEDURE sp_condicionalCase(in p_formadepago VARCHAR(45) )
BEGIN
	DECLARE formaPago ENUM('efectivo','tarjeta','transferencias');
    set formaPago =p_formadepago;
    
    case formaPago
        when 'efectivo' then
			select 'FORMA DE PAGO ELEGIDA :EFECTIVO';
        when 'tarjeta' then
			select 'FORMA DE PAGO ELEGIDA :tarjeta';
		when 'transferencias' then
			select 'FORMA DE PAGO ELEGIDA :transferencias';
	end case;
END$$

DELIMITER $$;