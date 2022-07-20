/*Todos los socios que han realizado prestamos*/
use biblioteca;
/*Socio que ha realizado más prestamos*/
SELECT S.nombreCompleto, P.idSocio, count(P.idSocio) as numeroPrestamo
from prestamo as P, Socio as S
where P.idSocio= S.idSocio
group by idSocio
order by numeroPrestamo;
 
select Socio.nombreCompleto, Prestamo.idSocio, COUNT(Prestamo.idSocio) as numeroPrestamo
from Prestamo, Socio 
where Prestamo.idSocio = Socio.idSocio
group by idSocio
order by numeroPrestamo DESC
LIMIT 0, 2;

/*Socio que ha realizado menos prestamos*/
select Socio.nombreCompleto, Prestamo.idSocio, COUNT(Prestamo.idSocio) as numeroPrestamo
from Prestamo, Socio 
where Prestamo.idSocio = Socio.idSocio
group by idSocio
order by numeroPrestamo
LIMIT 0, 2;

/*Socios que no han pedido prestamos*/
select nombreCompleto
from socio
where idSocio not in(select idSocio from prestamo);

/*Libros que no han sido prestados*/
select titulo
from libro
where idLibro not in(select idLibro from Prestamo);

/*Libros con mayor y menor número de ejemplares*/
select titulo, isbn, numeroEjemplares
from libro
where numeroEjemplares = (SELECT max(numeroEjemplares) from libro);

/*libro con menor numero de ejemplares*/
select titulo, isbn, numeroEjemplares
from libro
where numeroEjemplares = (SELECT min(numeroEjemplares) from libro);


/*Numero de libros por cada tema*/
select L.idTema, T.nombreTema, SUM(L.numeroEjemplares) AS "Total por tema"
from Libro AS L, tema as T
where L.idTema = T.idTema
group by idTema;

/*buscart todos los titulos que contengan la palabara fundamentos*/
select * from libro Where titulo like "%Fundamentos%";

/*Inforamcion sobre los prestamos que han realizado los socios*/
select socio.nombreCompleto, Prestamo.fechaPrestamo, Prestamo.fechaEntrega
from socio inner join Prestamo
on Socio.idSocio= prestamo.idSocio
and Libro.idLibro = Prestamo.idlibro

