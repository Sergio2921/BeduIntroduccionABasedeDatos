SELECT * FROM tienda.empleado;
use tienda;
#¿Cuál es el nombre de los empleados que realizaron cada venta?
select nombre,apellido_paterno,clave as venta from empleado inner join venta on empleado.id_empleado=venta.id_empleado;
#¿Cuál es el nombre de los artículos que se han vendido?
select nombre as articulo,clave as venta from articulo inner join venta on articulo.id_articulo=venta.id_articulo;
#¿Cuál es el total de cada venta?
select clave as venta,sum(precio) from articulo inner join venta on articulo.id_articulo=venta.id_articulo group by clave;
