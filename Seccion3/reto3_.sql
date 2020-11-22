
  #Obtener el puesto de un empleado.
CREATE VIEW puesto102 AS select empleado.nombre as nombre,apellido_paterno,puesto.nombre as puesto from empleado join puesto on empleado.id_puesto=puesto.id_puesto;
 #Saber qué artículos ha vendido cada empleado.
 CREATE VIEW articulos_empleado102 AS select clave,e.nombre as nombre,e.apellido_paterno,a.nombre as articulo from articulo  a join venta v on a.id_articulo=v.id_articulo join empleado e on v.id_empleado=e.id_empleado;
 #Saber qué puesto ha tenido más ventas
 #CREATE VIEW puestoventas102 AS 
 CREATE VIEW puesto_ventas102 AS SELECT p.nombre, count(v.clave) total FROM venta v JOIN empleado e ON v.id_empleado = e.id_empleado JOIN puesto p ON e.id_puesto = p.id_puesto GROUP BY p.nombre;
 SELECT * FROM tienda.puesto_ventas102 order by total DESC limit 1;