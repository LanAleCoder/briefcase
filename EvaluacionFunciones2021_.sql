/* 	Programador
	Nombre alumno:	Pedro Alexander Lancerio Alvarado
	Carné:	2020255
	Creación
		25/02/2021
        Creación de base de datos
        Creación de entidad Laboratorio
	Modificaciones
*/
drop database if exists DBParcial1;
create database DBParcial1;

use DBParcial1;

Create table Laboratorio(
	codigoLaboratorio int auto_increment not null,
    valor1 int not null,
    valor2 int not null,
    valor3 int not null,
    valor4 int not null,
    valor5 int not null,
    r1 decimal(10,2),
    r2 decimal(10,2),
    r3 decimal(10,2),
    r4 varchar(150),
    r5 varchar(100),
    r6 int,
    primary key PK_codigoLaboratorio (codigoLaboratorio)
);

Delimiter $$
	Create procedure sp_AgregarDatos(in valor1 int, in valor2 int, in valor3 int, in valor4 int, in valor5 int)
		Begin
			Insert into Laboratorio (valor1, valor2, valor3, valor4, valor5)
                values (valor1, valor2, valor3, valor4, valor5);
        End$$
Delimiter ;


CALL sp_AgregarDatos(3,5,2,4,8);

Delimiter $$
Create procedure sp_ListarDatos()
	Begin
		Select
			Laboratorio.valor1,
            Laboratorio.valor2,
            Laboratorio.valor3,
            Laboratorio.valor4,
            Laboratorio.valor5,
            Laboratorio.r1,
            Laboratorio.r2,
            Laboratorio.r3,
            Laboratorio.r4,
            Laboratorio.r5,            
            Laboratorio.r6
            from
				Laboratorio;
    End$$
Delimiter ;

Call sp_ListarDatos();


DELIMITER $$
create function fn_promedioNumero(valor1 int, valor2 int, valor3 int, valor4 int, valor5 int) returns int
reads sql data deterministic
begin 
declare promedio decimal;
set promedio = (valor1+valor2+valor3+valor4+valor5)/5;
return promedio;
end$$
delimiter ;

select fn_promedioNumero (5,8,5,4,7);

DELIMITER $$
create function fn_formGeneral(a int, b int, c int) returns int
reads sql data deterministic
begin 
declare formGeneral double;
set formGeneral = -b +- sqrt( Pow(b,2) -4*(a)*(-c)/ (2*a));
return formGeneral;
end$$
delimiter ;

select fn_formGeneral(2,3,4)

DELIMITER $$
CREATE FUNCTION fn_fechaMsD(DIA int , MES int , AÑO int)
returns VARChar(45)
READS SQL DATA deterministic
BEGIN
    if  (DIA<30) and (MES<12)and  (AÑO>0) THEN 
            RETURN 'la fecha es corecta';
    ELSE
        RETURN 'fecha no valida';
    end if;

END$$
DELIMITER ;

select fn_fechaMsD(3,10,0);

DELIMITER $$
create function fn_dias (dia int) returns varchar(10)
READS SQL DATA deterministic
begin 
case (dia)
when 1 then
return "Lunes";
when 2 then
return "Martes";
when 3 then 
return "Miercoles";
when 4 then
return "Jueves";
when 5 then 
return "Viernes";
when 6 then
return "Sabado";
when 7 then
return "Domingo";
else
return "no hay valor";
end case;
end $$
delimiter ;

select fn_dias(2);

DELIMITER $$
CREATE FUNCTION fn_factorial (n SMALLINT)
RETURNS SMALLINT
BEGIN
    DECLARE suma SMALLINT ;
    DECLARE tmp SMALLINT ;
    SET tmp=n;
    WHILE tmp>0 DO
        SET suma=suma*tmp;
        SET tmp=tmp-1;
    END WHILE;
    RETURN suma;
END $$
DELIMITER ;
select fn_factorial (3)




