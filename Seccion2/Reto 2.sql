#reto2
#¿Cuál es el promedio de salario de los puestos?
select avg(salario) as promedio_Salario from puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
select count(*) as Articulos from articuloPasta where nombre LIKE '%pasta%';
#¿Cuál es el salario mínimo y máximo?
select min(salario) as SalarioMinimo,max(salario) as SalarioMaximo from puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
select sum(salario) as suma from  puesto where id_puesto>((select max(id_puesto)-5 from puesto));
