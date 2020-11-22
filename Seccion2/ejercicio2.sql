#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con a.
select employeeNumber,lastName,firstName from employees where firstName like 'a%';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre termina con on.
select employeeNumber,lastName,firstName from employees where firstName like '%on';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on.
select employeeNumber,lastName,firstName from employees where firstName like '%on%';
#Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen tres letras e inician con T y finalizan con m.
select employeeNumber,lastName,firstName from employees where firstName like 't_m';
 #Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B
 select employeeNumber,lastName,firstName from employees where firstName not like 'b%';
 #Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
 select productCode,productName from products where productCode like '%\_20%';
# Dentro de la tabla orderdetails, obten el total de cada orden.
select orderNumber,sum(priceEach) from orderdetails group by orderNumber;
#Dentro de la tabla orders obten el número de órdenes por año.
SELECT year(orderDate),count(*)  FROM classicmodels.orders group by year(orderDate);
#Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
select  lastName,firstName,country  from employees inner join offices on employees.officeCode=offices.officeCode where country="USA";
#Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
SELECT customerNumber,checkNumber,amount FROM payments order by amount desc limit 1 ;
#Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
SELECT customerNumber,checkNumber,amount  FROM payments where amount>(select avg(amount) from payments) order by amount desc ;
#Obten el nombre de aquellos clientes que no han hecho ninguna orden.
select * from customers LEFT JOIN  orders ON customers.customerNumber = orders.customerNumber where orderNumber is NULL;
#Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
SELECT	 max(productos),min(productos),avg(productos) FROM (SELECT count(*) AS productos,orderNumber AS numero FROM orderdetails group by orderNumber) AS subconsulta;
#Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
SELECT status,count(*) FROM classicmodels.orders group by status ;
use classicmodels;
