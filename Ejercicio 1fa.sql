use dbJorge;

Select pais from proveedores;
select distinct pais from clientes;

select * from Clientes where pais IN (SELECT pais from Proveedores);

SELECT min(precio) AS "precio mas alto" from productos;
SELECT max(precio) AS "precio mas alto" from productos;

Select count(idProducto) from Productos;

SELECT avg(precio) from Productos;

select sum(cantidad) from DetallesDelPedido;

/*informacion sobre sobre los prestamos que han realizado los socios*/
select nombreCompleto, fechaPrestamo,fechaEntrega, titulo
from Socio INNER JOIN prestamo inner join libro 
on socio.idSocio = Prestamo.idSocio and Libro.idLibro = Prestamo.idLibro;