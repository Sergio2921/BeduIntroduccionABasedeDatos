#1¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,0000?
SELECT nombre, apellido_paterno FROM empleado WHERE id_puesto in  (SELECT id_puesto from puesto WHERE salario < 100000 );
#¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
SELECT id_empleado, min(total_ventas), max(total_ventas) FROM (SELECT clave, id_empleado, count(*) total_ventas FROM venta GROUP BY clave, id_empleado) AS sq GROUP BY id_empleado;
#¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
select clave,id_articulo from venta where id_articulo IN(select id_articulo from articulo where precio>5000);