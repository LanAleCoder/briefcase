select titulo, precio, precio*cantidad as montototal from libros;

select titulo, precio, ROUND (precio*0.10, 2) AS descuento, round(precio-(precio*0.1), 2) from libros;

SELECT ABS(-150);

SELECT CEILING(12.34);

SELECT FLOOR(12.34);

SELECT mod(9,2);

SELECT 8%2;

SELECT POWER(5,2);
SELECT PI();

SELECT RAND()*(4-1)+1;

SELECT TRUNCATE (12.34, 1);

select titulo, precio, ROUND(precio,1), CEILING(PRECIO, FLOOR(PRECIO), TRUNCATE(PRECIO,1) from libros;

select 7 div 3;

select titulo, length(titulo), char_length(titulo) from libros;

select titulo, left(titulo, 3) from libros;

select titulo, right(TITULO, 3) FROM LIBROS;

SELECT MID(titulo, 3,3) from libros;

SELECT titulo, lower(titulo) from libros;

select contact(titulo, autor) from libros;

SELECT concat_ws("", TITULO, AUTOR) from libros;

select now();

select current_timestamp();

select dayname(now());

select monthname(now());

select dayofmonth(now());

select dayofweek(now());

select dayofyear(now());

select time_to_sec("00:30:00");

SELECT sec_to_time(1800);

SELECT ADDTIME("01:00:00", "00:2*:00");

SELECT subtime("01:30:00", "00:10:00") ;

SELECT date_format(NOW(), "%D-%M-%Y %T");
