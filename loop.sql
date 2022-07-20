DELIMITER $$
DROP PROCEDURE IF EXISTS sp_bucle1 $$
CREATE PROCEDURE sp_bucle1()
BEGIN
    DECLARE i TiNYINT unsigned;
    DECLARE acumulador VARChar (45);
    set  i = 0;
    SET acumulador =  ' ';
    minibucle: loop
		set i=i+1;
        
        if i = 3 then 
			iterate minibucle;
		end if ;
        
        set acumulador = concat(acumulador,i,',');
        if i=10 then
			LEAVE minibucle;
		end if;
	end loop;
	select acumulador;
    
END$$

DELIMITER $$;

ty