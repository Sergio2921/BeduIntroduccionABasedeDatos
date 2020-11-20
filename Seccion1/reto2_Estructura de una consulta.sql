#¿Cuál es el nombre de los empleados con el puesto 4?
select concat(nombre,apellido_paterno) as nombre from empleado where id_puesto=4;
#¿Qué puestos tienen un salario mayor a $10,0000?
select nombre as puesto from puesto where salario>10000;
#¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
select nombre as articulo from articulo where precio>1000 and iva>100;
#¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
select * from venta where id_articulo in (135,963) and id_empleado in (835,369);
